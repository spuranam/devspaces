## 1. Support GCP Workload Identity Federation (WIF)

To support GCP WIF, we need:
- A static Kubernetes serviceaccount (KSA), as opposed to dynamic KSA that DevSpaces minits for each workspace
- Ability to projected static Kubernetes serviceaccount (KSA) inside the workspace

For example here is a sample [Kubernetes Pod spec](./wif-pod.yaml), that leverages GCP Workload Identity Federation (WIF)

## 2. How to install plugins that are not published to https://open-vsx.org

For example we need install [googlecloudtools.cloudcode](https://marketplace.visualstudio.com/items?itemName=GoogleCloudTools.cloudcode), which is not published to https://open-vsx.org. We tried to automate install by downloading vsix file and install using [code-oss utility](../devfile.yaml#L105-L147), but it turns out that `code-oss` is not available inside the our [custom udi image](../universal-developer-image/Dockerfile).

Wonder if there is any alternate way to accomplish this?

## 3. How to support standard GitHub workflow

We use standard GitHub workflow that entails `fork -> clone -> pr` very similar to the one followed by upstream Kubernetes project as [described here](https://github.com/kubernetes/community/blob/master/contributors/guide/github-workflow.md).

Not really sure how can express this in the devfile, i have [this strawman](../devfile.yaml#L40-L50) in the `devfile.yaml`?

## 4. Detected unrecoverable event FailedScheduling

Often launching the devspaces instance fails with following error, however a retry does succeeds

```bash
Detected unrecoverable event FailedScheduling: 0/11 nodes are available: 11 pod has unbound immediate PersistentVolumeClaims. preemption: 0/11 nodes are available: 11 Preemption is not helpful for scheduling..
```

## 5. Podman run inside devspace pod

We were able to successfully build container images by following this [blog post](https://che.eclipseprojects.io/2022/10/10/@mloriedo-building-container-images.html), however we are not able to run the resulting container images inside devspace, our attempts to do so results in the following error:

```bash
Error: crun: set propagation for `proc`: Permission denied: OCI permission denied
```

I think this is being tracked at https://issues.redhat.com/browse/CRW-3367

## 6. Workspace has does not automatically install custom vscode extensions

vscode extensions called out in file `.vscode/extensions.json` are not automatically installed, nor our attempts to enumerate these [.attribute.".vscode/extensions.json"](../.vscode/extensions.json) in [devfile.yaml](../devfile.yaml#L10-L22) were successful either.

## 7. Workspace has to be restarted after the built-in plugin auto-update

Core vscode plugin starts auto-updating when the workspace starts but then the workspaces has to be manually restarted.

## 8. Switching OpenShift IdP causes user to loose access to their workspaces.

If we were to switch the OpenShift IdP causes user to looses access to their workspaces, it looks like DevSpaces maintains some records in the PSQL database, which get out of sync with OpenShift IdP, the only recourse we were able to identity was to completely un-install DevSpaces and start over.

## Refs
- [Support UBI9](https://issues.redhat.com/browse/CRW-3261)
- https://github.com/eclipse/che/issues/21740 (SSH Key)
- https://github.com/eclipse/che/issues/21742 (npm global)
- https://github.com/eclipse/che/issues/21764 (container-build)
- https://github.com/eclipse/che/issues/21770 (container-build)
- https://github.com/devfile/devworkspace-operator/issues/884 (container-build)
- https://hackmd.io/Q4J2DiwKQ3qLYoncEgX_HA (container-build)
- https://devfile.io/docs/devfile/2.0.0/user-guide/authoring-stacks.html (404)
- https://github.com/devfile/devworkspace-operator/pull/844 (containerContributions)
- https://github.com/devfile/devworkspace-operator/pull/844 (containerContributions)
- https://github.com/eclipse/che/issues/21295 (workspace IDE)
- https://github.com/eclipse/che/issues/21629 (UBI9)
- https://issues.redhat.com/browse/CRW-3261 (UBI9)
- https://github.com/eclipse/che/issues/16304 (tekton)
- https://github.com/che-dockerfiles/che-buildkit-base (buildkit)

## Pod Specs

- https://github.com/eclipse/che/issues/21420
- https://github.com/devfile/api/issues/920
- https://issues.redhat.com/browse/CRW-3323

## IntelliJ

- https://github.com/fronzec/golang-projects/blob/main/memkv/.space/devfile.yaml

## Inner/Outer Loop

- https://github.com/jerolimov/devfile-sample-go-basic-absolute-k8s-uri/blob/main/devfile.yaml
- https://github.com/edwardceballos/echo/blob/master/Service.Echo/devfile.yaml
- https://github.com/eclipse/che/issues/21186
- https://github.com/devfile/devworkspace-operator/issues/798

## VScode Extensions

- https://github.com/eclipse/che/issues/21566#issuecomment-1193317587
- https://github.com/eclipse/che/issues/21701
- https://issues.redhat.com/browse/CRW-3444
- https://github.com/eclipse/che/issues/21702 (tasks)
- https://issues.redhat.com/browse/CRW-3302
- https://github.com/eclipse/che/issues/21644
- https://access.redhat.com/support/cases/#/case/03324721

## Prompts

- https://github.com/l0rd/devworkspace-demo/blob/container-contributions-v2/2-bashrc-cm.yaml

## Parent

- https://github.com/eclipse/che/issues/21544

## Git remotes

- https://github.com/eclipse/che/issues/21315
- https://github.com/devfile/devworkspace-operator/issues/913
- https://issues.redhat.com/browse/CRW-3371

## EndGame

- https://github.com/eclipse/che/issues/20830

## Container Build

- https://github.com/openshift/enhancements/issues/362
- https://issues.redhat.com/browse/SRVKP-2542
- https://github.com/eclipse/che/issues/21764

## VSCode marketplace

- https://issues.redhat.com/browse/CRW-3295

## CNV

- https://issues.redhat.com/browse/CNV-21892

## Cache

- https://github.com/eclipse/che/issues/21184

## OPENVSX

- https://github.com/open-vsx/publish-extensions
- https://www.youtube.com/watch?v=n_WMknuTMrI&list=PLy7t4z5SYNaSBxx8gLh0i9LlN2bZW6H1L&index=14
