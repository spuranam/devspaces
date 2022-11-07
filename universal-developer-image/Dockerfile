FROM registry.access.redhat.com/ubi8/ubi:8.6-990
#FROM registry.access.redhat.com/ubi9/ubi:9.0.0-1640.1665068441

ARG \
  UDI_VERSION=20221008-1345 \
  ARGOCD_VAULT_PLUGIN_VERSION=1.13.0 \
  BAT_VERSION=0.22.1 \
  BATS_VERSION=1.8.2 \
  #BUILDKIT_VERSION=0.10.4 \
  CLOUD_SQL_PROXY_SHA256SUM=88ca57368018158e52515862a8b2d7c38ac1f258ae020f01976fbca382c8db2a \
  CLOUD_SQL_PROXY_VERSION=1.32.0 \
  #CRANE_VERSION=0.11.0 \
  DOCKER_CREDENTIAL_GCR_VER=2.1.6 \
  E2FSPROGS_VERSION=1.46.5 \
  GCLOUD_VERSION=408.0.1 \
  GH_VERSION=2.19.0 \
  GO_VERSION=1.19.3 \
  GO_SHA256SUM='74b9640724fd4e6bb0ed2a1bc44ae813a03f1e72a4c76253e2d5c015494430ba' \
  #GOMPLATE_VERSION=3.11.2 \
  GRADLE_VERSION=7.5.1 \
  #GRYPE_VERSION=0.50.2 \
  HADOLINT_VERSION=2.10.0 \
  HELM_VERSION=3.10.1 \
  JAVA_11_VERSION=11.0.16.1 \
  JAVA_17_VERSION=17.0.4.1 \
  JAVA_8_VERSION=8.0.345 \
  JAVA_DEFAULT_VERSION=11.0.16.1 \
  JAVA_GRAL_VERSION=22.2.r17 \
  KAMEL_VERSION=1.9.2 \
  KN_VERSION=1.7.0 \
  KREW_VERSION=0.4.3 \
  KUSTOMIZE_VERSION=4.5.7 \
  LOMBOK_VERSION=1.18.24 \
  MAVEN_VERSION=3.8.6 \
  #NODEJS_12_VERSION=12.22.12 \
  #NODEJS_14_VERSION=14.20.1 \
  NODEJS_16_VERSION=16.18.1 \
  NODEJS_18_VERSION=18.12.1 \
  NODEJS_DEFAULT_VERSION=18.12.1 \
  NVM_VERSION=0.39.2 \
  OC_VERSION=4.11.12 \
  ODO_VERSION=3.2.0 \
  PS_VERSION=7.2.7 \
  PSEDTSVC_VERSION=3.4.5 \
  RCLONE_VERSION=1.60.0 \
  RIPGREP_VERSION=13.0.0 \
  ROBOCONFIG_VERSION=0.27.2 \
  ROXCTL_VERSION=3.72.1 \
  SHELLCHECK_VERSION=0.8.0 \
  #SYFT_VERSION=0.57.0 \
  SKAFFOLD_VERSION=2.0.1 \
  TELLER_VERSION=1.5.6 \
  TERRAFORM_VER=1.3.4 \
  TKNCLI_VERSION=0.27.0 \
  TRIVY_VERSION=0.34.0 \
  TILT_VERSION=0.30.10 \
  VAULT_VERSION=1.12.1 \
  YQ_VERSION=4.29.2

ENV \
  LANG='en_US.UTF-8' \
  LANGUAGE='en_US:en' \
  LC_ALL='en_US.UTF-8' \
  TZ=UTC \
  HOME=/home/user \
  USER_NAME=user \
  USER_UID=1001 \
  SUMMARY="Universal developer image" \
  DESCRIPTION="Image with developers tools, languages SDK and runtimes included." \
  #PATH=/home/user/google-cloud-sdk/bin:/home/user/.local/bin:/home/user/node_modules/.bin/:/home/user/.npm-global/bin/:/opt/app-root/src/.npm-global/bin/:/home/user/.krew/bin:/home/user/.cargo/bin:/usr/local/PowerShellEditorServices:${PATH} \
  PATH="/home/user/.local/bin:/home/user/google-cloud-sdk/bin:/home/user/.local/bin:/home/user/.krew/bin:/home/user/.cargo/bin:/home/user/.java/current/bin:/home/user/node_modules/.bin/:/home/user/.npm-global/bin/:/opt/apache-maven/bin:/opt/gradle/bin:/usr/bin:${PATH:-/bin:/usr/bin}" \
  PYTHON_VERSION=3.9 \
  PYTHONUNBUFFERED=1 \
  PYTHONIOENCODING=UTF-8 \
  #PIP_NO_CACHE_DIR=off \
  # Instruct pip(env) not to keep a cache of installed packages,
  # to install into the global site-packages and
  # to clear the pipenv cache as well
  PIP_NO_CACHE_DIR=1 \
  PIPENV_SYSTEM=1 \
  PIPENV_CLEAR=1 \
  #PIPENV_VENV_IN_PROJECT=1 \
  PIPENV_VERBOSITY=-1 \
  RCLONE_CONFIG=/home/user/rclone.conf \
  POWERSHELL_TELEMETRY_OPTOUT=true \
  DOTNET_SKIP_FIRST_TIME_EXPERIENCE=true \
  DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=false \
  PSModuleAnalysisCachePath=/var/cache/microsoft/powershell/PSModuleAnalysisCache/ModuleAnalysisCache \
  #GOPATH=/projects/.che/gopath \
  CARGO_HOME=/home/user/.cargo \
  RUSTUP_HOME=/home/user/.rustup \
  ## https://github.com/gitpod-io/gitpod/blob/main/dev/image/Dockerfile
  ## https://techglimpse.com/error-loading-shared-libraries-libcrypto-so-1-1/
  ## https://www.usessionbuddy.com/post/node-error-while-loading-shared-libraries-libbrotlidec.so.1-cannot-open-shared-object-file/
  LD_LIBRARY_PATH="/usr/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}" \
  CPATH="/usr/include${CPATH:+:${CPATH}}" \
  BUILDAH_ISOLATION=chroot \
  _BUILDAH_STARTED_IN_USERNS="" \
  SDKMAN_CANDIDATES_DIR=/home/user/.sdkman/candidates \
  SDKMAN_DIR=/home/user/.sdkman \
  NVM_DIR=/home/user/.nvm \
  JAVACONFDIRS="/etc/java${JAVACONFDIRS:+:}${JAVACONFDIRS:-}" \
  XDG_CONFIG_DIRS="/etc/xdg:${XDG_CONFIG_DIRS:-/etc/xdg}" \
  XDG_DATA_DIRS="/usr/share:${XDG_DATA_DIRS:-/usr/local/share:/usr/share}" \
  M2_HOME="/opt/apache-maven" \
  PKG_CONFIG_PATH="/usr/lib64/pkgconfig${PKG_CONFIG_PATH:+:${PKG_CONFIG_PATH}}"

LABEL \
  summary="$SUMMARY" \
  description="$DESCRIPTION" \
  io.k8s.description="$DESCRIPTION" \
  io.k8s.display-name="devspaces/udi-ubi8" \
  org.label-schema.version="$UDI_VERSION" \
  org.label-schema.name="devspaces/udi-ubi8"

COPY ./rootfs /

RUN set -ex && \
  #################################################################
  # install epel
  #################################################################
  curl \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --progress-bar --location --fail --show-error \
  --output /tmp/epel-release-latest.noarch.rpm \
  --url "https://dl.fedoraproject.org/pub/epel/epel-release-latest-$(rpm -E %rhel).noarch.rpm" && \
  rpm -ivh /tmp/epel-release-latest.noarch.rpm && \
  rm -f /tmp/epel-release-latest.noarch.rpm && \
  #################################################################
  # Define package dependecies
  #################################################################
  (echo '[container-tools]'; echo 'name=container-tools'; echo 'stream=rhel8'; echo 'profiles='; echo 'state=enabled') > /etc/dnf/modules.d/container-tools.module && \
  (echo '[python]'; echo 'name=python'; echo 'stream=39'; echo 'profiles='; echo 'state=enabled') > /etc/dnf/modules.d/python.module && \
  #dnf -y module enable container-tools:rhel8 && \
  #dnf -y module enable python39:3.9 && \
  PKGMGR='dnf' && \
  #BUILDTIME_PKGS="gcc python3-devel libffi-devel openssl-devel" && \
  BUILDTIME_PKGS="" && \
  RUNTIME_PKGS=" \
  # Developement Tools
  bash curl diffutils git-core git-lfs jq less lsof \
  openssh-clients rsync sudo time iproute socat procps-ng net-tools \
  wget tar gzip zip unzip xz bzip2 findutils which redhat-release \
  redhat-rpm-config patch ca-certificates glibc-langpack-en \
  coreutils-single nss_wrapper libffi-devel openssl-devel \
  bind-utils nmap-ncat \
  # BATS
  ncurses parallel \
  # Python
  openssh-clients libicu libgcc \
  python39-devel python39-pip python39-setuptools python39 \
  # Golang
  gettext make cmake autoconf automake gcc gcc-c++ glibc-devel \
  zlib-devel libstdc++ libstdc++-devel \
  # Dotnet
  dotnet-sdk-6.0 \
  # C/CPP
  llvm-toolset gcc gcc-c++ clang clang-libs clang-tools-extra gdb \
  git-clang-format make cmake \
  # Required packages for AWT
  libXext libXrender libXtst libXi \
  " && \
  #################################################################
  # Install packages
  #################################################################
  ${PKGMGR} \
  --disablerepo='*' \
  --enablerepo="ubi-8-appstream-rpms" \
  --enablerepo="ubi-8-baseos-rpms" \
  --enablerepo="ubi-8-codeready-builder-rpms" \
  -y --nodocs reinstall shadow-utils && \
  #################################################################
  # Install packages
  #################################################################
  # https://github.com/eclipse/che/issues/21745
  # https://github.com/containers/podman/blob/main/docs/tutorials/rootless_tutorial.md#ensure-fuse-overlayfs-is-installed
  # https://issues.redhat.com/browse/CRW-3397
  # https://issues.redhat.com/browse/CRW-3261
  ${PKGMGR} \
  --disablerepo='*' \
  --enablerepo="ubi-8-appstream-rpms" \
  --enablerepo="ubi-8-baseos-rpms" \
  --enablerepo="ubi-8-codeready-builder-rpms" \
  #--enablerepo="rhocp-4.11-for-rhel-8-x86_64-rpms" \
  -y --nodocs --setopt=tsflags=nodocs \
  --setopt=install_weak_deps=0 --setopt=skip_missing_names_on_install=False \
  --disableplugin=subscription-manager install \
  fuse-overlayfs && \
  fuse-overlayfs -V && \
  #################################################################
  ${PKGMGR} \
  --disablerepo='*' \
  --enablerepo="ubi-8-appstream-rpms" \
  --enablerepo="ubi-8-baseos-rpms" \
  --enablerepo="ubi-8-codeready-builder-rpms" \
  -y --nodocs --setopt=tsflags=nodocs \
  --setopt=install_weak_deps=0 --setopt=skip_missing_names_on_install=False \
  --disableplugin=subscription-manager install \
  podman buildah skopeo crun slirp4netns && \
  #################################################################
  ${PKGMGR} \
  --disablerepo='*' \
  --enablerepo="ubi-8-appstream-rpms" \
  --enablerepo="ubi-8-baseos-rpms" \
  --enablerepo="ubi-8-codeready-builder-rpms" \
  --enablerepo="epel" \
  -y --nodocs --setopt=tsflags=nodocs \
  --setopt=install_weak_deps=0 --setopt=skip_missing_names_on_install=False \
  --disableplugin=subscription-manager install \
  ${BUILDTIME_PKGS} ${RUNTIME_PKGS} /etc/containers/storage.conf --exclude container-selinux && \
  ## https://bugzilla.redhat.com/show_bug.cgi?id=1994521 (curl)
  ## https://www.usessionbuddy.com/post/node-error-while-loading-shared-libraries-libbrotlidec.so.1-cannot-open-shared-object-file/
  #dnf --setopt=tsflags=nodocs --setopt=install_weak_deps=0 \
  #--disableplugin=subscription-manager install -y --allowerasing libcurl-full && \
  #################################################################
  # Install e2fsprogs
  #################################################################
  ${PKGMGR} \
  --disablerepo='*' \
  --enablerepo="centos-8-baseos" \
  -y --nodocs --setopt=tsflags=nodocs --setopt=install_weak_deps=0 \
  --setopt=skip_missing_names_on_install=False \
  --disableplugin=subscription-manager install \
  e2fsprogs && \
  #################################################################
  # Cleanup packages
  #################################################################
  if [ "${BUILDTIME_PKGS}" != "" ]; then \
  ${PKGMGR} remove -y ${BUILDTIME_PKGS} \
  ;fi && \
  ${PKGMGR} clean all -y --enablerepo='*' && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  #################################################################
  # Add user and group first to make sure their IDs get assigned
  # consistently, regardless of whatever dependencies get added
  ################################################################
  mkdir -p /projects ${HOME} && \
  groupadd -r ${USER_NAME} -g ${USER_UID} && \
  useradd -u ${USER_UID} -g 0 -G wheel,root -d ${HOME} --shell /bin/bash  -c "${USER_NAME} user" -m ${USER_NAME} && \
  # Generate passwd.template
  cat /etc/passwd | sed s#user:x.*#user:x:\${USER_ID}:\${GROUP_ID}::\${HOME}:/bin/bash#g > ${HOME}/passwd.template && \
  cat /etc/group | sed s#root:x:0:#root:x:0:0,\${USER_ID}:#g > ${HOME}/group.template && \
  echo "${USER_NAME} ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/${USER_NAME} && \
  chmod 0440 /etc/sudoers.d/${USER_NAME} && \
  ## https://developers.redhat.com/blog/2018/08/15/how-to-enable-sudo-on-rhel#using_sudo_without_a_password
  chmod u+w /etc/sudoers && \
  sed -i 's/^%wheel/#wheel/' /etc/sudoers && \
  sed -i 's/# %wheel/%wheel/' /etc/sudoers && \
  chmod u-w /etc/sudoers && \
  # Change permissions to let any arbitrary user
  chgrp -R 0 ${HOME} /etc/passwd /etc/group /projects && \
  chmod -R g+rwX ${HOME} /etc/passwd /etc/group /projects && \
  #################################################################
  # user name recognition at runtime w/ an arbitrary uid
  #################################################################
  chown -R ${USER_UID}:0 ${HOME} && \
  chgrp -R 0 ${HOME} && \
  chmod -R 0775 ${HOME} && \
  chmod 0664 /etc/passwd /etc/group && \
  chmod g=u /etc/passwd /etc/group && \
  ls -la /etc/passwd && ls -la /etc/group && \
  #################################################################
  # Allow OpenShift user update CA bundle
  #################################################################
  chgrp -R 0 /etc/ssl/certs && \
  chmod -R g=u /etc/ssl/certs && \
  mkdir -p /etc/pki/ca-trust/extracted && \
  mkdir -p /etc/pki/ca-trust/source/anchors && \
  chgrp -R 0 /etc/pki/ca-trust && \
  chmod -R g=u /etc/pki/ca-trust && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  #################################################################
  # Rootless/unprivileged buildah configurations
  #################################################################s
  touch /etc/subgid /etc/subuid && \
  chmod g=u /etc /etc/subgid /etc/subuid /etc/passwd && \
  echo "${USER_NAME}:10000:65536" > /etc/subuid && \
  echo "${USER_NAME}:10000:65536" > /etc/subgid && \
  mkdir -p ${HOME}/.config/containers ${HOME}/.local/share/containers /etc/containers && \
  ## https://github.com/containers/podman/blob/main/docs/source/markdown/podman.1.md
  curl -Lo /etc/containers/containers.conf https://raw.githubusercontent.com/containers/libpod/master/contrib/podmanimage/stable/containers.conf && \
  ## grep -Ev "^#|^$" /etc/containers/storage.conf
  ## grep -Ev "^#|^$" ${HOME}/.config/containers/storage.conf
  ##cp /etc/containers/storage.conf ${HOME}/.config/containers/storage.conf && \
  mv /storage.conf ${HOME}/.config/containers/storage.conf && \
  ##https://issues.redhat.com/browse/CRW-3397, this needed till OCP 4.13 is released
  sed -i -e 's|^driver[[:space:]]*=.*$|driver = "vfs"|g' -e 's|^mount_program|#mount_program|g' -e 's|^mountopt|#mountopt|g' -e 's|^ostree_repo|#ostree_repo|g' ${HOME}/.config/containers/storage.conf && \
  ##(echo '[storage]';echo 'driver = "vfs"') > ${HOME}/.config/containers/storage.conf && \
  curl -Lo ${HOME}/.config/containers/containers.conf https://raw.githubusercontent.com/containers/libpod/master/contrib/podmanimage/stable/podman-containers.conf && \
  ##sed -i -e 's|^#mount_program|mount_program|g' -e '/additionalimage.*/a "/var/lib/shared",' /etc/containers/storage.conf && \
  ##sed -i -e 's|^driver[[:space:]]*=.*$|driver = "vfs"|g' -e 's|^#mount_program|mount_program|g' -e '/additionalimage.*/a "/var/lib/shared",' -e 's|^runroot[[:space:]]*=.*$|runroot = "/var/tmp/user"|g' -e 's|^graphroot[[:space:]]*=.*$|graphroot = "/home/user/.local/share/containers/storage"|g' -e 's|^mountopt[[:space:]]*=.*$|mountopt = "nodev,fsync=0"|g' -e 's|^#ignore_chown_errors|ignore_chown_errors|g' -e 's|^ignore_chown_errors[[:space:]]*=.*$|ignore_chown_errors = "true"|g' ${HOME}/.config/containers/storage.conf && \
  ## https://github.com/containers/podman/blob/main/docs/tutorials/rootless_tutorial.md#storageconf
  sed -i -e 's|^#mount_program|mount_program|g' -e '/additionalimage.*/a "/var/lib/shared",' /etc/containers/storage.conf && \
  mkdir -p \
  /var/lib/shared/overlay-images \
  /var/lib/shared/overlay-layers \
  /var/lib/shared/vfs-images \
  /var/lib/shared/vfs-layers \
  /var/lib/containers \
  /run/containers/storage \
  /var/tmp && \
  touch /var/lib/shared/overlay-images/images.lock && \
  touch /var/lib/shared/overlay-layers/layers.lock && \
  touch /var/lib/shared/vfs-images/images.lock && \
  touch /var/lib/shared/vfs-layers/layers.lock && \
  chown -R ${USER_UID}:0 ${HOME} /etc/containers /usr/share/containers /var/lib/shared /var/lib/containers /run/containers/storage /var/tmp && \
  chmod -R 0775 ${HOME} /etc/containers /usr/share/containers /var/lib/shared /var/lib/containers /run/containers/storage /var/tmp && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  ### install gcloud
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output - \
  --url "https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-${GCLOUD_VERSION}-linux-x86_64.tar.gz" | \
  tar -zxf - --no-same-owner -C ${HOME} && \
  #################################################################
  # gcloud config
  #################################################################
  gcloud config set core/disable_usage_reporting true && \
  gcloud config set component_manager/disable_update_check true && \
  gcloud config set metrics/environment github_docker_image && \
  gcloud config set survey/disable_prompts true && \
  ## gcloud components install gke-gcloud-auth-plugin docker-credential-gcr beta
  gcloud info && \
  # pip3 install --no-cache-dir -U crcmod && \
  # gsutil version -l && \
  rm -rf ${HOME}/google-cloud-sdk/.install/.backup && \
  rm -rf ${HOME}/.config/gcloud/logs && \
  mkdir -p ${HOME}/.config && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  ### install gomplate
  ##################################################################
  # curl --progress-bar --location --fail --show-error \
  # --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  # --retry "${CURL_RETRY:-5}" \
  # --retry-delay "${CURL_RETRY_DELAY:-0}" \
  # --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  # --output /usr/local/bin/gomplate \
  # --url "https://github.com/hairyhenderson/gomplate/releases/download/v${GOMPLATE_VERSION}/gomplate_linux-amd64-slim" && \
  # chmod 0755 /usr/local/bin/gomplate && \
  # rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  # rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  ### install buildkit
  ##################################################################
  # curl --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  # --retry "${CURL_RETRY:-5}" \
  # --retry-delay "${CURL_RETRY_DELAY:-0}" \
  # --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  # --insecure --progress-bar --location --output - \
  # --url "https://github.com/moby/buildkit/releases/download/v${BUILDKIT_VERSION}/buildkit-v${BUILDKIT_VERSION}.linux-amd64.tar.gz" | \
  # tar -xzf - --no-same-owner -C /usr/local/bin/ --strip-components=1 && \
  # chmod 0755 /usr/local/bin/buildctl && \
  # chmod 0755 /usr/local/bin/buildkit-runc && \
  # chmod 0755 /usr/local/bin/buildkit-qemu-* && \
  # chmod 0755 /usr/local/bin/buildkitd && \
  # rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  # rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  ### install crane
  ##################################################################
  # curl --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  # --retry "${CURL_RETRY:-5}" \
  # --retry-delay "${CURL_RETRY_DELAY:-0}" \
  # --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  # --insecure --progress-bar --location --output - \
  # --url "https://github.com/google/go-containerregistry/releases/download/v${CRANE_VERSION}/go-containerregistry_Linux_x86_64.tar.gz" | \
  # tar -xzf - --no-same-owner -C /usr/local/bin/ crane && \
  # chmod 0755 /usr/local/bin/crane && \
  # rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  # rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  ### install grype
  ##################################################################
  # curl --progress-bar --location --fail --show-error \
  # --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  # --retry "${CURL_RETRY:-5}" \
  # --retry-delay "${CURL_RETRY_DELAY:-0}" \
  # --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  # --output - \
  # --url "https://github.com/anchore/grype/releases/download/v${GRYPE_VERSION}/grype_${GRYPE_VERSION}_linux_amd64.tar.gz" | \
  # tar -zxf - --no-same-owner -C /usr/local/bin grype && \
  # chmod 0755 /usr/local/bin/grype && \
  # rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  # rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  ### install syft
  ##################################################################
  # curl --progress-bar --location --fail --show-error \
  # --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  # --retry "${CURL_RETRY:-5}" \
  # --retry-delay "${CURL_RETRY_DELAY:-0}" \
  # --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  # --output - \
  # https://github.com/anchore/syft/releases/download/v${SYFT_VERSION}/syft_${SYFT_VERSION}_linux_amd64.tar.gz | \
  # tar -zxf - --no-same-owner -C /usr/local/bin syft && \
  # chmod 0755 /usr/local/bin/syft && \
  # rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  # rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  ### install vault
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /tmp/vault_${VAULT_VERSION}_linux_amd64.zip \
  --url "https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip" && \
  unzip /tmp/vault_${VAULT_VERSION}_linux_amd64.zip -d /usr/local/bin/ && \
  rm -rf /tmp/vault_${VAULT_VERSION}_linux_amd64.zip && \
  chmod 0755 /usr/local/bin/vault && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  ### install kamel
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output - \
  --url "https://github.com/apache/camel-k/releases/download/v${KAMEL_VERSION}/camel-k-client-${KAMEL_VERSION}-linux-64bit.tar.gz" | \
  tar -zxf - --no-same-owner -C /usr/local/bin kamel && \
  chmod 0755 /usr/local/bin/kamel && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  ### install shellcheck
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output - \
  --url "https://github.com/koalaman/shellcheck/releases/download/v${SHELLCHECK_VERSION}/shellcheck-v${SHELLCHECK_VERSION}.linux.x86_64.tar.xz" | \
  tar -Jxf - --no-same-owner -C /bin --strip-components=1 shellcheck-v${SHELLCHECK_VERSION}/shellcheck && \
  chmod 0755 /bin/shellcheck && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  #################################################################
  # Install bats-core
  # Create empty ~/.parallel/ignored_vars and ~/.parallel/will-cite files so
  # parallel will pass all env variables and not show the citation message.
  #################################################################
  mkdir -p ${HOME}/.parallel /usr/local/bin/bats && \
  touch ${HOME}/.parallel/will-cite && \
  touch ${HOME}/.parallel/ignored_vars && \
  chown -R ${USER_UID}:0 ${HOME} && \
  chmod -R 0775 ${HOME} && \
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output - \
  --url "https://github.com/bats-core/bats-core/archive/refs/tags/v${BATS_VERSION}.tar.gz" | \
  tar -zxf - --no-same-owner -C /usr/local/bin/bats --strip-components=1 && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  ### install ripgrep
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output - \
  --url "https://github.com/BurntSushi/ripgrep/releases/download/${RIPGREP_VERSION}/ripgrep-${RIPGREP_VERSION}-x86_64-unknown-linux-musl.tar.gz" | \
  tar -zxf - --no-same-owner -C /usr/local/bin --strip-components=1 ripgrep-${RIPGREP_VERSION}-x86_64-unknown-linux-musl/rg && \
  chmod 0755 /usr/local/bin/rg && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  ### install bats
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output - \
  --url "https://github.com/sharkdp/bat/releases/download/v${BAT_VERSION}/bat-v${BAT_VERSION}-x86_64-unknown-linux-musl.tar.gz" | \
  tar -zxf - --no-same-owner -C /usr/local/bin --strip-components=1 bat-v${BAT_VERSION}-x86_64-unknown-linux-musl/bat && \
  chmod 0755 /usr/local/bin/bat && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  ### install oc,kubectl
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output - \
  --url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/${OC_VERSION}/openshift-client-linux-${OC_VERSION}.tar.gz" | \
  tar -zxf - --no-same-owner -C /usr/local/bin oc kubectl && \
  chmod 0755 /usr/local/bin/{oc,kubectl} && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  ### install krew
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output - \
  --url "https://github.com/kubernetes-sigs/krew/releases/download/v${KREW_VERSION}/krew-linux_amd64.tar.gz" | \
  tar -zxf - --no-same-owner -C /tmp && \
  chmod 0755 /tmp/krew-linux_amd64 && \
  mkdir -p ${HOME}/.krew/bin && \
  /tmp/krew-linux_amd64 install krew && \
  rm -rf /tmp/krew-linux_amd64 && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  ### install kn
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /usr/local/bin/kn \
  --url "https://github.com/knative/client/releases/download/knative-v${KN_VERSION}/kn-linux-amd64" && \
  chmod 0755 /usr/local/bin/kn && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  ### install hadolint
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /usr/local/bin/hadolint \
  --url "https://github.com/hadolint/hadolint/releases/download/v${HADOLINT_VERSION}/hadolint-Linux-x86_64" && \
  chmod 0755 /usr/local/bin/hadolint && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  ### install odo
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /usr/local/bin/odo \
  --url "https://mirror.openshift.com/pub/openshift-v4/clients/odo/v${ODO_VERSION}/odo-linux-amd64" && \
  chmod 0755 /usr/local/bin/odo && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  ### install skaffold
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /usr/local/bin/skaffold \
  --url "https://github.com/GoogleContainerTools/skaffold/releases/download/v${SKAFFOLD_VERSION}/skaffold-linux-amd64" && \
  chmod 0755 /usr/local/bin/skaffold && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  ### install docker-credential-gcr
  ##################################################################
  curl \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --progress-bar --location --fail --show-error \
  --output - \
  --url "https://github.com/GoogleCloudPlatform/docker-credential-gcr/releases/download/v${DOCKER_CREDENTIAL_GCR_VER}/docker-credential-gcr_linux_amd64-${DOCKER_CREDENTIAL_GCR_VER}.tar.gz" | \
  tar -xzf - --no-same-owner -C /usr/local/bin/ docker-credential-gcr && \
  chmod 0755 /usr/local/bin/docker-credential-gcr && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  ### install cloudsql-proxy
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /usr/local/bin/cloud_sql_proxy \
  --url "https://storage.googleapis.com/cloudsql-proxy/v${CLOUD_SQL_PROXY_VERSION}/cloud_sql_proxy.linux.amd64" && \
  chmod 0755 /usr/local/bin/cloud_sql_proxy && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  ### install roxctl
  ##################################################################
  curl \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --insecure --progress-bar --location \
  --output /usr/local/bin/roxctl \
  --url "https://mirror.openshift.com/pub/rhacs/assets/${ROXCTL_VERSION}/bin/Linux/roxctl" && \
  chmod 0755 /usr/local/bin/roxctl && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  ### install helm
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output - \
  --url "https://get.helm.sh/helm-v${HELM_VERSION}-linux-amd64.tar.gz" | \
  tar -zxf - --no-same-owner -C /usr/local/bin --strip-components=1 linux-amd64/helm && \
  chmod 0755 /usr/local/bin/helm && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  ### install gh
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output - \
  --url "https://github.com/cli/cli/releases/download/v${GH_VERSION}/gh_${GH_VERSION}_linux_amd64.tar.gz" | \
  tar -xzf - --no-same-owner -C /usr/local/bin --strip-components=2 gh_${GH_VERSION}_linux_amd64/bin/gh && \
  chmod 0755 /usr/local/bin/gh && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  ### install kustomize
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output - \
  --url "https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv${KUSTOMIZE_VERSION}/kustomize_v${KUSTOMIZE_VERSION}_linux_amd64.tar.gz" | \
  tar -xzf - --no-same-owner -C /usr/local/bin kustomize && \
  chmod 0755 /usr/local/bin/kustomize && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  ### install yq
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /usr/local/bin/yq \
  --url "https://github.com/mikefarah/yq/releases/download/v${YQ_VERSION}/yq_linux_amd64" && \
  chmod 0755 /usr/local/bin/yq && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  ### install lombok
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /usr/local/lib/lombok.jar \
  --url "https://projectlombok.org/downloads/lombok-${LOMBOK_VERSION}.jar" && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  ### install argocd-vault-plugin
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /usr/local/bin/argocd-vault-plugin \
  --url "https://github.com/argoproj-labs/argocd-vault-plugin/releases/download/v${ARGOCD_VAULT_PLUGIN_VERSION}/argocd-vault-plugin_${ARGOCD_VAULT_PLUGIN_VERSION}_linux_amd64" && \
  chmod 0755 /usr/local/bin/argocd-vault-plugin && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  ### install tkn
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output - \
  --url "https://github.com/tektoncd/cli/releases/download/v${TKNCLI_VERSION}/tkn_${TKNCLI_VERSION}_Linux_x86_64.tar.gz" | \
  tar -xzf - --no-same-owner -C /usr/local/bin tkn && \
  chmod 0755 /usr/local/bin/tkn && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  ### install terraform
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /tmp/terraform_${TERRAFORM_VER}_linux_amd64.zip \
  --url "https://releases.hashicorp.com/terraform/${TERRAFORM_VER}/terraform_${TERRAFORM_VER}_linux_amd64.zip" && \
  unzip /tmp/terraform_${TERRAFORM_VER}_linux_amd64.zip -d /usr/local/bin && \
  chmod 0755 /usr/local/bin/terraform && \
  rm -rf /tmp/terraform_${TERRAFORM_VER}_linux_amd64.zip && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  ### install rclone
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /tmp/rclone-v${RCLONE_VERSION}-linux-amd64.zip \
  --url "https://github.com/rclone/rclone/releases/download/v${RCLONE_VERSION}/rclone-v${RCLONE_VERSION}-linux-amd64.zip" && \
  unzip /tmp/rclone-v${RCLONE_VERSION}-linux-amd64.zip -d /tmp && \
  mv /tmp/rclone-v${RCLONE_VERSION}-linux-amd64/rclone /usr/local/bin/rclone && \
  chmod 0755 /usr/local/bin/rclone && \
  rm -rf /tmp/rclone-v${RCLONE_VERSION}-linux-amd64.zip /tmp/rclone-v${RCLONE_VERSION}-linux-amd64 && \
  mkdir -p ${HOME} && \
  echo "[gcp]\ntype = google cloud storage" > ${HOME}/rclone.conf && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  ### install tilt
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output - \
  --url "https://github.com/tilt-dev/tilt/releases/download/v${TILT_VERSION}/tilt.${TILT_VERSION}.linux.x86_64.tar.gz" | \
  tar -zxf - --no-same-owner -C /usr/local/bin tilt && \
  chmod 0755 /usr/local/bin/tilt && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  ### install teller
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output - \
  --url "https://github.com/tellerops/teller/releases/download/v${TELLER_VERSION}/teller_${TELLER_VERSION}_Linux_x86_64.tar.gz" | \
  tar -zxf - --no-same-owner -C /usr/local/bin teller && \
  chmod 0755 /usr/local/bin/teller && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  ### install trivy
  ##################################################################
  ## https://github.com/aquasecurity/trivy/pull/1723/files (TLS Support)
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /tmp/trivy_${TRIVY_VERSION}_Linux-64bit.tar.gz \
  https://github.com/aquasecurity/trivy/releases/download/v${TRIVY_VERSION}/trivy_${TRIVY_VERSION}_Linux-64bit.tar.gz && \
  mkdir -p /tmp/trivy ${HOME}/contrib && \
  tar -zxf /tmp/trivy_${TRIVY_VERSION}_Linux-64bit.tar.gz --no-same-owner -C /tmp/trivy && \
  mv /tmp/trivy/trivy /usr/local/bin/trivy && \
  mv /tmp/trivy/contrib/*.tpl ${HOME}/contrib/ && \
  rm -rf /tmp/trivy /tmp/trivy_${TRIVY_VERSION}_Linux-64bit.tar.gz && \
  chmod 0755 /usr/local/bin/trivy && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  ### install pwsh
  ##################################################################
  rpm -Uvh https://github.com/PowerShell/PowerShell/releases/download/v${PS_VERSION}/powershell-${PS_VERSION}-1.rh.x86_64.rpm && \
  mkdir -p ${HOME}/.local/share/powershell/PSReadLine && \
  ##################################################################
  # Install Roboconfig
  ##################################################################
  pwsh -f /roboconfig/bootstrap.ps1 -RoboConfigDestination /roboconfig -ZipLocation "https://www.gsoutils.ford.com/powershell/api/v2/package/roboconfig/${ROBOCONFIG_VERSION}" && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  # pip install --install-option="--prefix=$HOME/local" pydoc yq
  update-alternatives --set python3 /usr/bin/python3.9 && \
  ln -s /usr/bin/python3.9 /usr/local/bin/python && \
  ln -s /usr/bin/pip3 /usr/local/bin/pip && \
  #python -m pip install -q --no-warn-script-location python-language-server[all] ptvsd jedi ipykernel jupyter wrapt && \
  #pip3 install --no-cache-dir -U crcmod pipenv python-language-server[yapf] ptvsd jedi ipykernel jupyter wrapt && \
  #gsutil version -l && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  # Install rust
  ##################################################################
  ## https://stackoverflow.com/a/38396533
  ## source "$HOME/.cargo/env"
  curl --proto '=https' --tlsv1.2 -sSfo rustup https://sh.rustup.rs && \
  chmod +x rustup && \
  mv rustup /usr/bin/ && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  # Install go
  ##################################################################
  ## https://lakefs.io/managing-multiple-go-versions-with-go/
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /tmp/go${GO_VERSION}.linux-amd64.tar.gz \
  --url "https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz" && \
  echo "${GO_SHA256SUM} /tmp/go${GO_VERSION}.linux-amd64.tar.gz" | sha256sum -c - && \
  tar -xzf /tmp/go${GO_VERSION}.linux-amd64.tar.gz --no-same-owner -C /usr/local && \
  rm -rf /tmp/go${GO_VERSION}.linux-amd64.tar.gz && \
  mkdir -p /projects/.che/gopath /.cache ${HOME}/go && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  # ##################################################################
  # # e2fsprogs, required for intellij support
  # # https://github.com/eclipse/che/issues/21007
  # # https://github.com/devfile/developer-images/pull/25
  # ##################################################################
  # curl --progress-bar --location --fail --show-error \
  # --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  # --retry "${CURL_RETRY:-5}" \
  # --retry-delay "${CURL_RETRY_DELAY:-0}" \
  # --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  # --output - \
  # --url "https://mirrors.edge.kernel.org/pub/linux/kernel/people/tytso/e2fsprogs/v${E2FSPROGS_VERSION}/e2fsprogs-${E2FSPROGS_VERSION}.tar.gz" | \
  # tar -xzf - --no-same-owner -C /tmp && \
  # cd "/tmp/e2fsprogs-${E2FSPROGS_VERSION}" && \
  # mkdir build && \
  # cd build && \
  # ../configure --prefix=/usr --with-root-prefix="" --enable-elf-shlibs && \
  # make && \
  # make install && \
  # make install-libs && \
  # cd -- && \
  # rm -rf "/tmp/e2fsprogs-${E2FSPROGS_VERSION}" && \
  # rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  # rm -rf /var/cache/* /var/log/dnf* /var/log/yum.*
  ###==>
  mkdir -p ${HOME} && \
  # Copy the global git configuration to user config as global /etc/gitconfig
  # file may be overwritten by a mounted file at runtime
  cp /etc/gitconfig ${HOME}/.gitconfig && \
  chown -R ${USER_UID}:0 ${HOME} /etc/passwd /etc/group /home /entrypoint.sh && \
  chmod -R 0775 ${HOME} /etc/passwd /etc/group /home /entrypoint.sh && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.*

USER 1001

ENV \
  JAVA_HOME_8=${HOME}/.sdkman/candidates/java/${JAVA_8_VERSION}-tem \
  JAVA_HOME_11=${HOME}/.sdkman/candidates/java/${JAVA_11_VERSION}-tem \
  JAVA_HOME_17=${HOME}/.sdkman/candidates/java/${JAVA_17_VERSION}-tem \
  # Java-related environment variables are described and set by ${HOME}/.bashrc
  # To make Java working for dash and other shells, it needs to initialize them in the Dockerfile.
  SDKMAN_CANDIDATES_API="https://api.sdkman.io/2" \
  SDKMAN_PLATFORM="linuxx64" \
  SDKMAN_VERSION="5.16.0" \
  GRADLE_HOME="${HOME}/.sdkman/candidates/gradle/current" \
  JAVA_HOME="${HOME}/.sdkman/candidates/java/current" \
  MAVEN_HOME="${HOME}/.sdkman/candidates/maven/current" \
  GRAALVM_HOME="${HOME}/.sdkman/candidates/java/${JAVA_GRAL_VERSION}-mandrel" \
  PATH="${HOME}/.sdkman/candidates/maven/current/bin:${PATH}" \
  PATH="${HOME}/.sdkman/candidates/java/current/bin:${PATH}" \
  PATH="${HOME}/.sdkman/candidates/gradle/current/bin:${PATH}" \
  PATH="${HOME}/.local/share/coursier/bin:$PATH" \
  # NodeJS
  NODEJS_DEFAULT_VERSION=${NODEJS_DEFAULT_VERSION} \
  #NODEJS_12_VERSION=${NODEJS_12_VERSION} \
  #NODEJS_14_VERSION=${NODEJS_14_VERSION} \
  NODEJS_16_VERSION=${NODEJS_16_VERSION} \
  NODEJS_18_VERSION=${NODEJS_18_VERSION} \
  PATH=${NVM_DIR}/versions/node/v${NODEJS_DEFAULT_VERSION}/bin:${PATH} \
  #NODEJS_HOME_12=${NVM_DIR}/versions/node/v${NODEJS_12_VERSION} \
  #NODEJS_HOME_14=${NVM_DIR}/versions/node/v${NODEJS_14_VERSION} \
  NODEJS_HOME_16=${NVM_DIR}/versions/node/v${NODEJS_16_VERSION} \
  NODEJS_HOME_18=${NVM_DIR}/versions/node/v${NODEJS_18_VERSION} \
  ## Golang
  PATH=/home/user/go/bin:/usr/local/go/bin:$PATH

RUN set -ex && \
  rustup -y --no-modify-path --profile minimal -c rust-src -c rust-analysis -c rls && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  # configure python #VIRTUAL_ENV=/opt/venv
  ##################################################################
  ## https://florian-dahlitz.de/articles/run-python-applications-as-non-root-user-in-docker-by-example
  ## https://pythonspeed.com/articles/activate-virtualenv-dockerfile/
  ## https://github.com/paralus
  # pip install --install-option="--prefix=$HOME/local" pydoc yq
  #python -m pip install -q --no-warn-script-location python-language-server[all] ptvsd jedi ipykernel jupyter wrapt && \
  pip3 install --user --no-cache-dir -U crcmod pipenv python-language-server[yapf] ptvsd jedi ipykernel jupyter wrapt && \
  gsutil version -l && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  # install krew plugin
  ##################################################################
  kubectl krew install slice && \
  kubectl krew install neat && \
  kubectl krew install ns && \
  kubectl krew install ctx && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  ## Java
  ## sdk list java
  ## sdk install jbang 0.97.0 && \
  ##################################################################
  curl -fsSL "https://get.sdkman.io" | bash && \
  bash -c "source ${HOME}/.sdkman/bin/sdkman-init.sh && \
  sed -i 's/sdkman_auto_answer=false/sdkman_auto_answer=true/g' ${HOME}/.sdkman/etc/config && \
  sdk install java ${JAVA_8_VERSION}-tem && \
  sdk install java ${JAVA_11_VERSION}-tem && \
  sdk install java ${JAVA_17_VERSION}-tem && \
  sdk install java ${JAVA_GRAL_VERSION}-mandrel && \
  sdk default java ${JAVA_DEFAULT_VERSION}-tem && \
  sdk install gradle ${GRADLE_VERSION} && \
  sdk install maven ${MAVEN_VERSION} && \
  sdk flush archives && \
  sdk flush temp" && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  ## NodeJS
  ## nvm ls, nvm list available, nvm ls-remote | grep -i 'latest'
  ##################################################################
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v${NVM_VERSION}/install.sh | bash && \
  source ${HOME}/.bashrc && \
  nvm install v${NODEJS_18_VERSION} && \
  nvm install v${NODEJS_16_VERSION} && \
  #nvm install v${NODEJS_14_VERSION} && \
  #nvm install v${NODEJS_12_VERSION} && \
  nvm alias default v${NODEJS_DEFAULT_VERSION} && \
  nvm use v${NODEJS_DEFAULT_VERSION} && \
  npm install --global yarn@v1.22.19 && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ###==>
  ##################################################################
  ## Golang
  ##################################################################
  # https://github.com/GoogleContainerTools/container-debug-support/blob/duct-tape/go/helper-image/Dockerfile#L26
  # https://github.com/devfile/developer-images/blob/main/universal/ubi8/Dockerfile#L99
  #GOBIN=/tmp/ go install github.com/go-delve/delve/cmd/dlv@master && \
  #mv /tmp/dlv ${HOME}/go/bin/dlv-dap
  go install golang.org/x/tools/gopls@latest && \
  go install -v github.com/mdempsky/gocode@latest && \
  go install -v github.com/uudashr/gopkgs/v2/cmd/gopkgs@latest && \
  go install -v github.com/ramya-rao-a/go-outline@latest && \
  go install -v github.com/acroca/go-symbols@latest && \
  go install -v golang.org/x/tools/cmd/guru@latest && \
  go install -v golang.org/x/tools/cmd/gorename@latest && \
  go install -v github.com/cweill/gotests/...@latest && \
  go install -v github.com/fatih/gomodifytags@latest && \
  go install -v github.com/josharian/impl@latest && \
  go install -v github.com/davidrjenni/reftools/cmd/fillstruct@latest && \
  go install -v github.com/haya14busa/goplay/cmd/goplay@latest && \
  go install -v github.com/godoctor/godoctor@latest && \
  go install -v github.com/go-delve/delve/cmd/dlv@latest && \
  go install -v github.com/stamblerre/gocode@latest && \
  go install -v github.com/rogpeppe/godef@latest && \
  go install -v golang.org/x/lint/golint@latest && \
  go install -v honnef.co/go/tools/cmd/staticcheck@latest && \
  #################################################################
  # Cleanup packages
  #################################################################
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  chmod -R 0775 ${HOME}

WORKDIR /projects

ENTRYPOINT ["/entrypoint.sh"]

CMD ["tail", "-f", "/dev/null"]
