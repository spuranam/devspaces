## 1. Support GCP Workload Identity Federation (WIF)

To support GCP WIF, we need:
- A static Kubernetes serviceaccount (KSA), as opposed to dynamic KSA that DevSpaces minits for each workspace
- Ability to projected static Kubernetes serviceaccount (KSA) inside the workspace

For example here is a sample [Kubernetes Pod spec](./wif-pod.yaml), that leverages GCP Workload Identity Federation (WIF)

| [Link to the related issue](https://issues.redhat.com/browse/CRW-3470)                            |
|:---------------------------------------------------------------------------------------|
| **10/28 update**: To be discussed before starting the implementation                   |

> **Note**: We just created the issue. We probably need more details as we are not familiar with WIF and how it affects  Dev Spaces users on your cluster (that’s a question for our next call). Anyway:
> - It’s currently not possible to use a pre-created SA (issue linked above). That can be addressed but I would like to discuss if there are other options before we start working on it.
> - It should be possible to mount projected SA inside the workspace using a [`podOverride attribute`](https://github.com/devfile/devworkspace-operator/issues/852).
 
## 2. How to install plugins that are not published to https://open-vsx.org

For example we need install [googlecloudtools.cloudcode](https://marketplace.visualstudio.com/items?itemName=GoogleCloudTools.cloudcode), which is not published to https://open-vsx.org. We tried to automate install by downloading vsix file and install using [code-oss utility](../devfile.yaml#L105-L147), but it turns out that `code-oss` is not available inside the our [custom udi image](../universal-developer-image/Dockerfile).

Wonder if there is any alternate way to accomplish this?

| [Link to the related issue](https://issues.redhat.com/browse/CRW-3472)                            |
|:---------------------------------------------------------------------------------------|
| **10/28 update**: The issue will be included in the next sprint backlog                |

> **Note**: Dev Spaces v3.3 [will run an open-vsx instance](https://issues.redhat.com/browse/CRW-3295) with a customized list of extensions (the list is defined here and [there](https://github.com/redhat-developer/devspaces/blob/devspaces-3-rhel-8/dependencies/che-plugin-registry/openvsx-sync.json) is a separate [issue](https://issues.redhat.com/browse/CRW-3451) to refine it for the release). The extensions available in the embedded open-vsx will also be customizable by end users (including adding extensions that are not in open-vsx.org).

## 3. How to support standard GitHub workflow

We use standard GitHub workflow that entails `fork -> clone -> pr` very similar to the one followed by upstream Kubernetes project as [described here](https://github.com/kubernetes/community/blob/master/contributors/guide/github-workflow.md).

Not really sure how can express this in the devfile, i have [this strawman](../devfile.yaml#L40-L50) in the `devfile.yaml`?

| [Link to the related issue](https://issues.redhat.com/browse/CRW-3482)                            |
|:---------------------------------------------------------------------------------------|
| **10/28 update**: To be discussed before starting the implementation                   |

> **Note**: We recommend avoiding the `project` section in a Devfile (we plan to deprecate it and remove it from the spec). A project-less devfile works perfectly with the GitHub PR flow because it doesn’t reference any repository or branch. Now, even with that, there are still 2 problems:
1) The link to start a workspace (`<devspaces-url>/#<git-repo-url>`, we like to put in README files) doesn’t work with forks.
2) The remotes (origin and upstream) are not set automatically and developers have to do that manually. That happens on local environments too, but, due to their ephemeral nature, it’s more annoying in remote environments.
Both problems would be solved by a chrome / firefox extension that “adapts” the `<git-repo-url>` and eventually adds the upstream remote.

## 4. Detected unrecoverable event FailedScheduling

Often launching the devspaces instance fails with following error, however a retry does succeeds

```bash
Detected unrecoverable event FailedScheduling: 0/11 nodes are available: 11 pod has unbound immediate PersistentVolumeClaims. preemption: 0/11 nodes are available: 11 Preemption is not helpful for scheduling..
```

| [Link to the related issue](https://issues.redhat.com/browse/CRW-3474)                            |
|:---------------------------------------------------------------------------------------|
| **10/28 update**: The issue will be included in the next sprint backlog                |

> **Note**: 

## 5. Podman run inside devspace pod

We were able to successfully build container images by following this [blog post](https://che.eclipseprojects.io/2022/10/10/@mloriedo-building-container-images.html), however we are not able to run the resulting container images inside devspace, our attempts to do so results in the following error:

```bash
Error: crun: set propagation for `proc`: Permission denied: OCI permission denied
```

| [Link to the related issue](https://issues.redhat.com/browse/CRW-3470)                                              |
|:---------------------------------------------------------------------------------------------------------|
| **10/28 update**: In progress, planned to be resolved by the end of current sprint but may slip to next. |

> **Note**: We have investigated with different parameters (`podman run --net=none --ipc=none`) and capabilities (`SETGID`, `SETUID`, `SETFCAP`, `SETPCAP`, `SYS_CHROOT`) but those don’t address the problem. As mentioned in [this blog post](https://www.redhat.com/sysadmin/podman-inside-kubernetes) the solution is to either use flag the container as `privileged` or disable `SELinux`. None of these solutions is ideal, but the second is probably better and we are going to make it available as a `CheCluster` configuration option (turned off by default).

> On the same topic: in the next release of Dev Spaces, the blog post instructions won’t be necessary anymore. We introduced a CheCluster field to turn on build capabilities: if set, the SCC and the role bindings will be created automatically. We are also addressing a couple of issues that were blocking containers build for other users ([1](https://github.com/containers/podman/discussions/12721) and [2](https://github.com/devfile/devworkspace-operator/pull/954)).

## 6. Workspace has does not automatically install custom vscode extensions

vscode extensions called out in file `.vscode/extensions.json` are not automatically installed, nor our attempts to enumerate these [.attribute.".vscode/extensions.json"](../.vscode/extensions.json) in [devfile.yaml](../devfile.yaml#L10-L22) were successful either.

| [Link to the related issue](https://issues.redhat.com/browse/CRW-3483)                            |
|:---------------------------------------------------------------------------------------|
| **10/28 update**: The issue will be included in the next sprint backlog.               |

## 7. Workspace has to be restarted after the built-in plugin auto-update

Core vscode plugin starts auto-updating when the workspace starts but then the workspaces has to be manually restarted.

| [Link to the related issue](https://issues.redhat.com/browse/CRW-3475)                            |
|:---------------------------------------------------------------------------------------|
| **10/28 update**: We have just created the issue, we need to investigate.              |

> **Note**: We have reproduced the problem with a minor difference: it requires the reload of the page and not a full restart of workspace.

## 8. Switching OpenShift IdP causes user to loose access to their workspaces.

If we were to switch the OpenShift IdP causes user to looses access to their workspaces, it looks like DevSpaces maintains some records in the PSQL database, which get out of sync with OpenShift IdP, the only recourse we were able to identity was to completely un-install DevSpaces and start over.

| [Link to the related issue](https://issues.redhat.com/browse/CRW-3478)                            |
|:---------------------------------------------------------------------------------------|
| **10/28 update**: To be discussed before starting the implementation.                  |

> **Note**: This can be tricky as changing the IdP means changing OpenShift Users IDs. From an OpenShift point of view users are different, so losing access to the existing workspaces looks expected. Now if that means that existing users (but new from OCP point of view) cannot use Dev Spaces at all, they cannot even create new workspaces, that’s an issue. In fact if the new old and names match, the namespace will be the same, and the new user may not be able to use Dev Spaces. In this case some possible workarounds may be: deleting the existing namespace and [pre-create the new namespaces](https://access.redhat.com/documentation/en-us/red_hat_openshift_dev_spaces/3.2/html/administration_guide/configuring-che#preprovisioning-projects), or changing the spec.devEnvironments.defaultNamespace.template.

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
- https://github.com/eclipse/che/issues/21105#issuecomment-1285443623
- https://github.com/devfile/devworkspace-operator/pull/944

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

## editor

- https://github.com/RickJWagner/golang-health-check/blob/devspaces-3-rhel-8/.che/che-editor.yaml
