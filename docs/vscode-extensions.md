## Refs

- https://stackoverflow.com/a/64537579
- https://github.com/Microsoft/vscode/issues/1557
- https://github.com/Microsoft/vscode/issues/60#issuecomment-161792005
- https://www.gitpod.io/docs/references/ides-and-editors/vscode-extensions
- https://cloud.google.com/code/docs/vscode/install
- https://github.com/flathub/com.visualstudio.code-oss/issues/11
- https://blog.raw.pm/en/FLOSS-version-of-vscode-and-extensions-gallery/

- https://github.com/che-incubator/che-code/blob/main/code/product.json
- https://github.com/Microsoft/vscode/blob/main/product.json

```bash

/checode/checode-linux-libc/product.json

curl --fail --silent --location --retry 2 --max-time 20 --compressed \
--output /tmp/GoogleCloudTools.cloudcode.vsix \
--url "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/GoogleCloudTools/vsextensions/cloudcode/1.20.3/vspackage"

code-oss --install-extension googlecloudtools.cloudcode

export VSCODE_GALLERY_SERVICE_URL='https://marketplace.visualstudio.com/_apis/public/gallery'
export VSCODE_GALLERY_CACHE_URL='https://vscode.blob.core.windows.net/gallery/index'
export VSCODE_GALLERY_ITEM_URL='https://marketplace.visualstudio.com/items'

cat ./docs/che-product.json | jq 'del(.extensionsGallery)' | jq '. + {"extensionsGallery": {"serviceUrl": "https://marketplace.visualstudio.com/_apis/public/gallery","cacheUrl": "https://vscode.blob.core.windows.net/gallery/index","itemUrl": "https://marketplace.visualstudio.com/items"}}'


code-oss --install-extension googlecloudtools.cloudcode
```
