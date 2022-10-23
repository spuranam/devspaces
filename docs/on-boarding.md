## On-boarding to DevSpace

```bash
FORD_CDSID='spuranam'
FORD_EMAIL='spuranam@ford.com'

cat <<EOF | oc apply -f - --server-side --force-conflicts
kind: Namespace
apiVersion: v1
metadata:
  name: ${FORD_CDSID}-ford-com-devspaces
  labels:
    app.kubernetes.io/part-of: che.eclipse.org
    app.kubernetes.io/component: workspaces-namespace
    kubernetes.io/metadata.name: ${FORD_CDSID}-ford-com-devspaces
  annotations:
    che.eclipse.org/username: ${FORD_EMAIL}
---
kind: RoleBinding
apiVersion: rbac.authorization.k8s.io/v1
metadata:
  name: ${FORD_CDSID}-ford-com-devspaces-ns-admin
  namespace: ${FORD_CDSID}-ford-com-devspaces
subjects:
  - kind: User
    apiGroup: rbac.authorization.k8s.io
    name: ${FORD_EMAIL}
roleRef:
  apiGroup: rbac.authorization.k8s.io
  kind: ClusterRole
  name: ns-admin
---
apiVersion: rbac.authorization.k8s.io/v1
kind: ClusterRoleBinding
metadata:
  name: system:openshift:scc:container-build
roleRef:
  apiGroup: rbac.authorization.k8s.io
  kind: ClusterRole
  name: system:openshift:scc:container-build
subjects:
- kind: User
  name: ${FORD_EMAIL}
---
kind: ResourceQuota
apiVersion: v1
metadata:
  name: ${FORD_CDSID}-ford-com-devspaces
  namespace: ${FORD_CDSID}-ford-com-devspaces
spec:
  hard:
    services.nodeports: '0'
    limits.cpu: '4'
    limits.memory: 16Gi
    requests.cpu: '4'
    requests.memory: 16Gi
    px-repl2-file.storageclass.storage.k8s.io/requests.storage: 50Gi
    px-repl2-block.storageclass.storage.k8s.io/requests.storage: 50Gi
    gce-standard-csi.storageclass.storage.k8s.io/requests.storage: '0'
    gce-ssd-csi.storageclass.storage.k8s.io/requests.storage: '0'
    standard-csi.storageclass.storage.k8s.io/requests.storage: '0'
    standard.storageclass.storage.k8s.io/requests.storage: '0'
    stork-snapshot-sc.storageclass.storage.k8s.io/requests.storage: '0'
---
EOF
```

## Git

```bash
git config --global init.defaultBranch main
git init
git branch -M main
git add . && git commit -m "incept"
git remote add origin git@github.ford.com:spuranam/devspaces.git
git remote add origin https://github.com/spuranam/devspaces.git
git push origin
```
