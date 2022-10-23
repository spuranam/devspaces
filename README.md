[![Dev](https://img.shields.io/static/v1?label=Open%20in&message=DevSpaces%20server%20(with%20VS%20Code)&logo=eclipseche&color=FDB940&labelColor=525C86&?logoWidth=40&style=for-the-badge)](https://devspaces.apps.sb105.caas.gcp.ford.com/dashboard/#https://github.ford.com/Containers/devspace)


## DevSpace sample

A sample [devfile](./devfile.yaml)

## GCP WIF Binidngs
Run this in GCP to create Workload Identity Federation Bindings, between GCP SA and OCP SA.

```bash
CUSTOMER_GCP_SA='sa-pipeline@ford-0b080a912fa97c1cf8fb3986.iam.gserviceaccount.com'
CUSTOMER_GCP_PROJECT_ID='ford-0b080a912fa97c1cf8fb3986'
OCP_NAMESPACE='spuranam-ford-com-devspaces'
OCP_SERVICE_ACCOUNT='devspaces-sa'
OCP_GCP_PROJECT_NUMBER='219764264310'
OCP_WORKLOAD_IDENTITY_POOL='sb105-2cf66'

gcloud iam service-accounts add-iam-policy-binding "${CUSTOMER_GCP_SA}" \
  --member="principal://iam.googleapis.com/projects/${OCP_GCP_PROJECT_NUMBER}/locations/global/workloadIdentityPools/${OCP_WORKLOAD_IDENTITY_POOL}/subject/system:serviceaccount:${OCP_NAMESPACE}:${OCP_SERVICE_ACCOUNT}" \
  --project=${CUSTOMER_GCP_PROJECT_ID} \
  --role=roles/iam.workloadIdentityUser
```

## Container Images Pull/Push secrets

```bash
NAMESPACE='spuranam-ford-com-devspaces'
REGISTRY_CREDS=$(cat <<EOF
{
    "auths": {
        "registry.ford.com": {
            "auth": "xxxxxxxxxxxxx",
            "email": ""
        }
    }
}
EOF
)
kubectl create secret generic image-push-tokens \
  --from-file=.dockerconfigjson=<(echo -n ${REGISTRY_CREDS}) \
  --type=kubernetes.io/dockerconfigjson \
    --namespace=${NAMESPACE} --dry-run=client -o yaml |
yq eval '.metadata.labels."controller.devfile.io/devworkspace_pullsecret" = "true"' - |
yq eval '.metadata.labels."controller.devfile.io/watch-secret" = "true"' - |
yq eval '.metadata.labels."controller.devfile.io/mount-to-devworkspace" = "true"' - |
yq eval '.metadata.annotations."controller.devfile.io/mount-path" = "/home/user/secrets"' - |
yq eval '.metadata.annotations."controller.devfile.io/mount-as" = "file"' - |
yq eval 'del(.metadata.creationTimestamp)' - | kubectl apply -f -
```

## WIF Configs

```bash
kind: ConfigMap
apiVersion: v1
metadata:
  name: google-creds
  namespace: spuranam-ford-com-devspaces
  labels:
    controller.devfile.io/mount-to-devworkspace: 'true'
    controller.devfile.io/watch-configmap: 'true'
  annotations:
    controller.devfile.io/mount-path: /home/user/secrets
    controller.devfile.io/mount-as: file # file | subpath
data:
  google-creds.json: |
    {
      "audience": "//iam.googleapis.com/projects/219764264310/locations/global/workloadIdentityPools/sb105-2cf66/providers/sb105-2cf66",
      "credential_source": {
        "file": "/var/run/secrets/openshift/serviceaccount/token",
        "format": {
          "type": "text"
        }
      },
      "service_account_impersonation_url": "https://iamcredentials.googleapis.com/v1/projects/-/serviceAccounts/sa-pipeline@ford-0b080a912fa97c1cf8fb3986.iam.gserviceaccount.com:generateAccessToken",
      "subject_token_type": "urn:ietf:params:oauth:token-type:jwt",
      "token_url": "https://sts.googleapis.com/v1/token",
      "type": "external_account"
    }
```

## Install DevSpace

Follow [these](./docs/install.md) steps to install DevSpaces on an OpenShift cluster

## On-boarding to DevSpace

Follow [these](./docs/on-boarding.md) steps to on-board new user(s) to DevSpaces

<!--
## Build Container Image

A sample [instructions](./docs/container-build.md) to build and run container images within devspaces instance.
-->

## REST APIs

- https://\<che-host\>/swagger/

## Devfile Registry
- https://registry.devfile.io/viewer

## Refs

- https://devfile.io/
