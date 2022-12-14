## Importing extensions that are not in the Open VSX Registry

This section describes how to add VS Code extensions that are not in the https://open-vsx.org/[Open VSX Registry] to {prod-short}'s embedded Open VSX Registry.

To use an extension that has not been published to the [Open VSX Registry](https://open-vsx.org/), contact the extension's author to ask them to publish the extension. See [How to Publish an Extension](https://github.com/eclipse/openvsx/wiki/Publishing-Extensions#how-to-publish-an-extension).

If you need the extension and the owner cannot or will not publish it, you may be able to fork it and publish it yourself. Consult the license terms of the extension to find out if this is possible.

You can also import the extension into the local registry from the procedure in this document.

## Prerequisites
- The VS Code extension file (.vsix) must be available to download via direct link.
- The ID and version of the extension to be added.

## Procedure
Modify `openvsx-sync.json` file in the [plugin-registry repository](https://github.com/redhat-developer/devspaces/blob/devspaces-3-rhel-8/dependencies/che-plugin-registry/openvsx-sync.json) to add an information about the extension:

```json
    {
        "id": "extension_id",
        "download": "url_to_download_vsix_file",
        "version": "extension_version"
    }
```

```json
    {
        "id": "redhat.vscode-yaml",
        "version": "1.10.1",
        "download": "https://github.com/redhat-developer/vscode-yaml/releases/download/1.10.1/yaml-1.10.1-19523.vsix"
    }
> NOTE: If the extension is available in https://marketplace.visualstudio.com/vscode[VS Code Marketplace], the download link could be build like https://extension_publisher.gallery.vsassets.io/_apis/public/gallery/publisher/extension_publisher/extension/extension_name/extension_version/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage.

> For GoogleCloudTools.cloudcode extension it is https://GoogleCloudTools.gallery.vsassets.io/_apis/public/gallery/publisher/GoogleCloudTools/extension/cloudcode/1.20.3/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage

To build the plug-in registry container image and publish it to a container registry, run the following commands:

```bash
./build.sh -o username -r quay.io -t custom
podman push quay.io/username/che-plugin-registry:custom
```

Customize an instance of `CheCluster` Custom Resource in the cluster to point the image and save the changes:
```yaml
spec:
  components:
    pluginRegistry:
      deployment:
        containers:
          - image: quay.io/username/plugin-registry:custom
      openVSXURL: ''
```

Check that `plugin-registry` pod restarted and is running. Restart the workspace and check the available extensions in the Extensions view.

## Refs
- https://gist.github.com/l0rd/8374c0786cfd2a7f0a30fd182fe41360#file-devfile-yaml
- https://issues.redhat.com/browse/CRW-3472
- https://github.com/eclipse-che/che-docs/pull/2503
- https://issues.redhat.com/browse/CRW-3477
- https://issues.redhat.com/browse/CRW-3321 (UBI9)
- https://issues.redhat.com/browse/CRW-3366 (podman)
- https://github.com/eclipse/che/issues/21823 (podman)
- https://github.com/eclipse/che/issues/21701 (auto-plugin)
- https://issues.redhat.com/browse/CRW-3544
