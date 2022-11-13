```bash
GITOPS_REPO="${HOME}/Projects/workspace/Containers/platform-gitops"

oc get image.config.openshift.io/cluster -o yaml | \
  kubectl neat - | \
  yq eval '.spec.registrySources.allowedRegistries += ["registry-proxy.engineering.redhat.com"]' - | \
  yq eval '.spec.registrySources.allowedRegistries += ["registry.stage.redhat.io"]' - | \
  yq eval '.spec.allowedRegistriesForImport += [{"domainName": "registry-proxy.engineering.redhat.com", "insecure": false}]' - | \
  yq eval '.spec.allowedRegistriesForImport += [{"domainName": "registry.stage.redhat.io", "insecure": false}]' - | \
  kubectl apply -f -

oc patch proxy.config.openshift.io/cluster --type=merge \
  --patch='{"spec": {"httpProxy": "http://internet.ford.com:83","httpsProxy": "http://internet.ford.com:83","noProxy": "localhost,127.0.0.1,.ford.com,.local,.svc,.internal,.googleapis.com"}}'

cat <<EOF | oc apply -f - --server-side --force-conflicts
kind: Namespace
apiVersion: v1
metadata:
  name: openshift-devspaces
  labels:
    kubernetes.io/metadata.name: openshift-devspaces
---
EOF

cat <<EOF | oc apply -f - --server-side --force-conflicts
# https://www.eclipse.org/che/docs/next/administration-guide/configuring-oauth-2-for-github/#applying-the-github-oauth-app-secret_che
# https://access.redhat.com/documentation/en-us/red_hat_openshift_dev_spaces/3.1/html-single/administration_guide/index#oauth-for-github-gitlab-or-bitbucket
# https://github.com/devfile/devworkspace-operator/issues/911
kind: Secret
apiVersion: v1
metadata:
  name: github-oauth-config
  namespace: openshift-devspaces
  labels:
    app.kubernetes.io/part-of: che.eclipse.org
    app.kubernetes.io/component: oauth-scm-configuration
  annotations:
    che.eclipse.org/oauth-scm-server: github
    che.eclipse.org/scm-server-endpoint: https://github.ford.com
type: Opaque
data:
  id: XXXXXXXXXXXXXXXX
  secret: YYYYYYYYYYYYYY
EOF

cat <<EOF | oc apply -f - --server-side --force-conflicts
---
apiVersion: security.openshift.io/v1
kind: SecurityContextConstraints
metadata:
  name: container-build
allowHostDirVolumePlugin: false
allowHostIPC: false
allowHostNetwork: false
allowHostPID: false
allowHostPorts: false
allowPrivilegeEscalation: true
allowPrivilegedContainer: false
allowedCapabilities:
  - SETUID
  - SETGID
defaultAddCapabilities: null
fsGroup:
  type: MustRunAs
# Temporary workaround for https://github.com/devfile/devworkspace-operator/issues/884
priority: 20
readOnlyRootFilesystem: false
requiredDropCapabilities:
  - KILL
  - MKNOD
runAsUser:
  type: MustRunAsRange
seLinuxContext:
  type: MustRunAs
supplementalGroups:
  type: RunAsAny
users: []
groups: []
volumes:
  - configMap
  - downwardAPI
  - emptyDir
  - persistentVolumeClaim
  - projected
  - secret
---
kind: ClusterRole
apiVersion: rbac.authorization.k8s.io/v1
metadata:
  name: get-n-update-container-build-scc
rules:
- apiGroups:
  - security.openshift.io
  resources:
  - securitycontextconstraints
  resourceNames:
  - container-build
  verbs:
  - get
  - update
---
apiVersion: rbac.authorization.k8s.io/v1
kind: ClusterRole
metadata:
  name: system:openshift:scc:container-build
rules:
- apiGroups:
  - security.openshift.io
  resourceNames:
  - container-build
  resources:
  - securitycontextconstraints
  verbs:
  - use
---
## oc adm policy add-cluster-role-to-user get-n-update-container-build-scc system:serviceaccount:openshift-operators:devworkspace-controller-serviceaccount -o yaml --dry-run=client
apiVersion: rbac.authorization.k8s.io/v1
kind: ClusterRoleBinding
metadata:
  name: get-n-update-container-build-scc
roleRef:
  apiGroup: rbac.authorization.k8s.io
  kind: ClusterRole
  name: get-n-update-container-build-scc
subjects:
- kind: ServiceAccount
  name: devworkspace-controller-serviceaccount
  namespace: openshift-operators
EOF

rm -f ${GITOPS_REPO}/openshift-devspaces-operator/refs/docs/devspace-next/{installDevSpacesFromLatestIIB.sh,installCatalogSourceFromIIB.sh,getLatestIIBs.sh}

for s in installDevSpacesFromLatestIIB.sh installCatalogSourceFromIIB.sh getLatestIIBs.sh; do
  curl -sSL https://raw.githubusercontent.com/redhat-developer/devspaces/devspaces-3-rhel-8/product/$s \
    -o ${GITOPS_REPO}/openshift-devspaces-operator/refs/docs/devspace-next/$s
done

chmod +x ${GITOPS_REPO}/openshift-devspaces-operator/refs/docs/devspace-next/*.sh

${GITOPS_REPO}/openshift-devspaces-operator/refs/docs/devspace-next/installDevSpacesFromLatestIIB.sh --next --quay --no-checluster --no-create-users --get-url
#${GITOPS_REPO}/openshift-devspaces-operator/refs/docs/devspace-next/installDevSpacesFromLatestIIB.sh -t 3.3 --quay --no-checluster --no-create-users --get-url
#${GITOPS_REPO}/openshift-devspaces-operator/refs/docs/devspace-next/installDevSpacesFromLatestIIB.sh -t 3.2 --quay --no-checluster --no-create-users --get-url

# Add DevWorkspace upstream catalog source
kubectl apply -f - <<EOF
apiVersion: operators.coreos.com/v1alpha1
kind: CatalogSource
metadata:
  name: devworkspace-operator-catalog
  namespace: openshift-marketplace
spec:
  sourceType: grpc
  image: quay.io/devfile/devworkspace-operator-index:next
  publisher: Red Hat
  displayName: DevWorkspace Operator Catalog
  updateStrategy:
    registryPoll:
      interval: 5m
EOF

# Patch the DevWorkspace operator subscription to use the upstream catalog source
SUB_NAME="devworkspace-operator-fast-devspaces-fast-openshift-operators"
SUB_NS="openshift-operators"
kubectl patch subscription.operators.coreos.com "${SUB_NAME}" -n "${SUB_NS}" \
  --type=merge -p \
  '{"spec":{"channel":"next", "source":"devworkspace-operator-catalog", "sourceNamespace":"openshift-marketplace"}}'

## https://access.redhat.com/support/cases/#/case/03322059
kubectl apply -f - <<EOF
apiVersion: operators.coreos.com/v1alpha1
kind: Subscription
metadata:
  name: kubernetes-imagepuller-operator
  namespace: openshift-operators
spec:
  channel: stable
  installPlanApproval: Automatic
  name: kubernetes-imagepuller-operator
  source: community-operators
  sourceNamespace: openshift-marketplace
EOF

kubectl apply -f - <<EOF
apiVersion: che.eclipse.org/v1alpha1
kind: KubernetesImagePuller
metadata:
  name: image-puller
  namespace: openshift-devspaces
spec:
  configMapName: k8s-image-puller
  daemonsetName: k8s-image-puller
  deploymentName: kubernetes-image-puller
  imagePullerImage: 'quay.io/eclipse/kubernetes-image-puller:next'
  images: "img-1=quay.io/devspaces/code-rhel8:3.3;img-2=quay.io/devspaces/idea-rhel8:3.3;img-3=quay.io/devspaces/machineexec-rhel8:3.3;img-4=quay.io/devspaces/theia-endpoint-rhel8:3.3;img-5=quay.io/devspaces/theia-rhel8:3.3;img-6=quay.io/devspaces/udi-rhel8:3.3;img-7=registry.redhat.io/devspaces/traefik-rhel8@sha256:e2646cca2b7f295077cf23b720c470e587ca9f88acd0e4c6e7f359dd7748ac97;img-8=registry.ford.com/devspaces/udi-ubi8:20221111-2306;img-9=registry.ford.com/pipelines/hugo:0.105.0"
EOF

oc patch DevWorkspaceOperatorConfig/devworkspace-config -n openshift-devspaces --type=merge \
  --patch='{"config":{"workspace":{"serviceAccount":{"serviceAccountName":"devspace","disableCreation":true}}}}'

oc create sa devspace -n spuranam-ford-com-devspaces


cat <<EOF | oc apply -f - --server-side --force-conflicts
## https://issues.redhat.com/browse/CRW-3187?
## https://github.com/l0rd/che-blog/blob/building-container-images-rootless/_posts/2022-09-27-building-container-images.adoc
apiVersion: org.eclipse.che/v2
kind: CheCluster
metadata:
  name: devspaces
  namespace: openshift-devspaces
spec:
  components:
    cheServer:
      debug: false
      logLevel: INFO
    dashboard: {}
    database:
      credentialsSecretName: postgres-credentials
      externalDb: false
      postgresDb: dbche
      postgresHostName: postgres
      postgresPort: "5432"
      pvc:
        claimSize: 1Gi
        storageClass: "px-repl2-block" #"gce-ssd-csi"
    devWorkspace:
      ## By default, a user can run only one workspace at a time. You can enable users to run multiple workspaces simultaneously.
      runningLimit: "1"
    devfileRegistry: {}
    imagePuller:
      enable: false
      #spec:
      #  imagePullerImage: registry.redhat.io/devspaces/imagepuller-rhel8@sha256:704522d3c78929941e101f436b7acfee41680a4cb158bfad70dacd5d63198a2a # tag: 3.1-12
    metrics:
      enable: true
    pluginRegistry: {}
  containerRegistry: {}
  devEnvironments:
    secondsOfRunBeforeIdling: -1
    secondsOfInactivityBeforeIdling: 900 # -1 # to disable uncomment
    disableContainerBuildCapabilities: true
    ## until https://github.com/eclipse/che/issues/21760 is addressed
    defaultEditor: https://eclipse-che.github.io/che-plugin-registry/main/v3/plugins/che-incubator/che-code/insiders/devfile.yaml
    #defaultEditor: che-incubator/che-code/insiders #eclipse/che-theia/latest
    defaultComponents:
      - name: universal-developer-image
        container:
          image: registry.ford.com/devspaces/udi-ubi8:20221107-0428 #quay.io/devspaces/udi-rhel8:3.3 #registry.redhat.io/devspaces/udi-rhel8:3.3
          sourceMapping: /projects
          memoryLimit: 6Gi
          memoryRequest: 1Gi
          cpuLimit: 4000m
          cpuRequest: 1000m
          mountSources: true
    defaultNamespace:
      template: <username>-devspaces
      autoProvision: false # <= true by default
    storage:
      pvcStrategy: per-user ## per-user | per-workspace |
      perUserStrategyPvcConfig:
        claimSize: 5Gi
        storageClass: px-repl2-block
      perWorkspaceStrategyPvcConfig:
        claimSize: 5Gi
        storageClass: px-repl2-block
  gitServices:
    github:
      - endpoint: 'https://github.ford.com'
        secretName: github-oauth-config
        # https://github.com/eclipse/che/issues/21724
        disableSubdomainIsolation: false
  ## https://github.com/kubermatic/community-components/blob/master/components/eclipse-che/templates/org_v2_checluster.yaml
  networking:
    auth:
      gateway:
        configLabels:
          app: che
          component: che-gateway-config
EOF
```

## Refs

- https://github.com/che-incubator/devspaces-demo
- https://docs.google.com/presentation/d/1PUwPsY8TosHMsQT0iMe6zLD4wrd66U_oot2_oSIM9F0/edit#slide=id.g15b6d695eef_1_0
- https://github.com/l0rd/devworkspace-demo/tree/container-contributions-v2
- https://github.com/l0rd/tilt-example-java/tree/main

## Secure Supply Chain

- https://github.com/jchraibi/multicluster-devsecops/tree/hybrid-cloud-patterns-main
- https://github.com/jchraibi/spring-petclinic-pac

## Devfiles

- https://github.com/azkaoru/devfile-eap64/blob/main/devfile.yaml
- https://github.com/eclipse/che/issues/21481
- https://tech.paulcz.net/blog/building-spring-docker-images/
- https://github.com/l0rd/go-hello-world/blob/main/.devfile.yaml
- https://github.com/l0rd/tilt-example-java/blob/main/.devfile.yaml
- https://github.com/eclipse-che/che-operator/blob/main/devfile.yaml
- https://github.com/che-samples/golang-echo-example/blob/devfile2/devfile.yaml
- https://github.com/che-samples/golang-example/blob/devfilev2/devfile.yaml

## Workshop

- https://github.com/devsecops-workshop
