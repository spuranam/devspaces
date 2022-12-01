FROM registry.access.redhat.com/ubi8/ubi:8.7-929
#FROM registry.access.redhat.com/ubi9/ubi:9.0.0-1640.1665068441

ARG \
  UDI_VERSION=20221008-1345 \
  ARGOCD_VAULT_PLUGIN_VERSION=1.13.1 \
  ARGOCD_VAULT_PLUGIN_SHA256SUM=957001f4bcd5db9aca468fbea9afa19d5088c06708fbcf97b07ba8e369447932 \
  BAT_VERSION=0.22.1 \
  BATS_VERSION=1.8.2 \
  CLOUD_SQL_PROXY_VERSION=1.33.1 \
  CLOUD_SQL_PROXY_SHA256SUM=fb66afb1cb8ee730314088eb7b299398bda6c0434b9b383b27a26b8951e775c5 \
  CLOUD_CODE_VERSION=1.20.4 \
  COSIGN_VERSION=1.13.1 \
  COSIGN_SHA256SUM=a50651a67b42714d6f1a66eb6773bf214dacae321f04323c0885f6a433051f95 \
  SGET_SHA256SUM=36c25be6bb496ccd57e676a93edfb05931517443e6f5ce1e51f08650c1bb260f \
  CONFTEST_VERSION=0.36.0 \
  CONFTEST_SHA256SUM=d98783276c4fd47c779a1ece4c0decba9ee6462687839d25389882a468c362cc \
  CNQUERY_VERSION=7.6.0 \
  CNQUERY_SHA256SUM=d838b2b222b3cfea8ef646283385422266489044ab4d5f48d91326938786e856 \
  CNSPEC_VERSION=7.6.0 \
  CNSPEC_SHA256SUM=a659a953c7e6669c79809eaa84c04458a5544d34f84f67a9a5d84d6969b32a82 \
  E2FSPROGS_VERSION=1.46.5 \
  GCLOUD_VERSION=410.0.0 \
  GCLOUD_SHA256SUM=de3525b315d7ea3c3696eba466ddd97313ccad45f6f684bcdd9224374baa6c08 \
  GH_VERSION=2.20.2 \
  GH_SHA256SUM=3bc7cd3b2fd9082218b8246595673f55badb351db1b9e627eec121beb8b26450 \
  GO_VERSION=1.19.3 \
  GO_SHA256SUM=74b9640724fd4e6bb0ed2a1bc44ae813a03f1e72a4c76253e2d5c015494430ba \
  GRADLE_VERSION=7.5.1 \
  HADOLINT_VERSION=2.12.0 \
  HADOLINT_SHA256SUM=56de6d5e5ec427e17b74fa48d51271c7fc0d61244bf5c90e828aab8362d55010 \
  HELM_VERSION=3.10.2 \
  HELM_SHA256SUM=2315941a13291c277dac9f65e75ead56386440d3907e0540bf157ae70f188347 \
  JAVA_11_VERSION=11.0.17 \
  JAVA_17_VERSION=17.0.5 \
  JAVA_8_VERSION=8.0.352 \
  JAVA_DEFAULT_VERSION=11.0.17 \
  JAVA_GRAL_VERSION=22.3.0.1.r17 \
  KAMEL_VERSION=1.10.3 \
  KN_VERSION=1.8.1 \
  KN_SHA256SUM=bb0e52175a08dcb1ef0ee4c519959862defea1042a77f62047b3114bb55bece5 \
  KREW_VERSION=0.4.3 \
  KUSTOMIZE_VERSION=4.5.7 \
  KUSTOMIZE_SHA256SUM=701e3c4bfa14e4c520d481fdf7131f902531bfc002cb5062dcf31263a09c70c9 \
  MAVEN_VERSION=3.8.6 \
  NERD_FONT_VERSION=2.2.2 \
  NODEJS_16_VERSION=16.18.1 \
  NODEJS_18_VERSION=18.12.1 \
  NODEJS_DEFAULT_VERSION=18.12.1 \
  NVM_VERSION=0.39.2 \
  OC_VERSION=4.11.17 \
  OC_SHA256SUM=bb943a3a8cb014ac7f83d7aa4d9917b749f1b67ed44b349b76e8303da0a5f28f \
  ODO_VERSION=3.3.0 \
  ODO_SHA256SUM=0de4a2410fcc7a4683050fc101b18d9262cd436aabdc545d94899fca558becd9 \
  PS_VERSION=7.3.0 \
  PSEDTSVC_VERSION=3.4.5 \
  RCLONE_VERSION=1.60.1 \
  RCLONE_SHA256SUM=fd6bc19cc7fadb13538cc109128bf92ef47762a83a3eaf2ab699b03bb2a1fe32 \
  RIPGREP_VERSION=13.0.0 \
  ROBOCONFIG_VERSION=0.28.0 \
  ROXCTL_VERSION=3.73.0 \
  ROXCTL_SHA256SUM=0bbef52e8850fd260365f66ce911427a92da7328c6a43e48c4403a51e653c5be \
  SHELLCHECK_VERSION=0.8.0 \
  SKAFFOLD_VERSION=2.0.2 \
  SKAFFOLD_SHA256SUM=32e73cf27d6ba880e8b1dcaff322abcf3f4ed176705ebd6a3562079f0128fc2e \
  TERRAFORM_VERSION=1.3.6 \
  TERRAFORM_SHA256SUM=bb44a4c2b0a832d49253b9034d8ccbd34f9feeb26eda71c665f6e7fa0861f49b \
  TKNCLI_VERSION=0.28.0 \
  TKNCLI_SHA256SUM=72687cca6e6573a6e6801344e53814a530a071f2ce027b5b0efbc4819181c794 \
  TRIVY_VERSION=0.35.0 \
  TRIVY_SHA256SUM=ebc1dd4d4c0594028d6a501dfc1a73d56add20b29d3dee5ab6e64aac94b1d526 \
  TILT_VERSION=0.30.12 \
  TILT_SHA256SUM=90178633c010ebd499277b645b6b1303406af801133f77966c77f75da9d12484 \
  VAULT_VERSION=1.12.2 \
  VAULT_SHA256SUM=116c143de377a77a7ea455a367d5e9fe5290458e8a941a6e2dd85d92aaedba67 \
  VALE_VERSION=2.21.2 \
  VALE_SHA256SUM=26e77f466450675f4caea523c900991ecd19b7032e3b38f557cb5d75cdd2a6e8 \
  WIFWIF_VERSION=1.2.5 \
  YQ_VERSION=4.30.5
  #BUILDKIT_VERSION=0.10.4 \
  #BUILDKIT_SHA256SUM=0.10.4 \
  #CRANE_VERSION=0.11.0 \
  #CRANE_SHA256SUM=0.11.0 \
  #DOCKER_CREDENTIAL_GCR_VERSION=2.1.6 \
  #DOCKER_CREDENTIAL_GCR_SHA256SUM=0a1fae51992ee7cb2237f45068b2949c3355cf5d1e1bc2dadf6822d7c7148bdf \
  #GOMPLATE_VERSION=3.11.3 \
  #GOMPLATE_SHA256SUM=2c67ef580d2416e82dc2ab8f0c30e1bf372dcd3e8511073df9310d91dc3d5f94 \
  #GRYPE_VERSION=0.53.1 \
  #GRYPE_SHA256SUMN=adda3d5c92a37b3367229af519cd4d815cefa52c64770d7e0c7ca22ec992f13e \
  #LOMBOK_VERSION=1.18.24 \
  #SYFT_VERSION=0.62.3 \
  #SYFT_SHA256SUM=80cea6e686c00c3e7b591bfa83a6e2364936400e93bd6413d26f0a58f3bf7782 \
  #TELLER_VERSION=1.5.6 \
  #TELLER_SHA256SUM=5f4d00a4126df6e875dedb81669ec71e1002b9f7b088fd1758261f03a67da679

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
  TERM=xterm \
  NVM_DIR=/home/user/.nvm \
  JAVACONFDIRS="/etc/java${JAVACONFDIRS:+:}${JAVACONFDIRS:-}" \
  XDG_CONFIG_DIRS="/etc/xdg:${XDG_CONFIG_DIRS:-/etc/xdg}" \
  XDG_DATA_DIRS="/usr/share:${XDG_DATA_DIRS:-/usr/local/share:/usr/share}" \
  M2_HOME="/opt/apache-maven" \
  PKG_CONFIG_PATH="/usr/lib64/pkgconfig${PKG_CONFIG_PATH:+:${PKG_CONFIG_PATH}}" \
  ZSH_DISABLE_COMPFIX=true

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
  redhat-rpm-config patch ca-certificates glibc-langpack-en iputils \
  coreutils-single nss_wrapper libffi-devel openssl-devel \
  bind-utils nmap-ncat fontconfig \
  # BATS
  ncurses parallel \
  # Python
  openssh-clients libicu libgcc \
  python39-devel python39-pip python39-setuptools python39 \
  # Golang
  gettext make cmake autoconf automake gcc gcc-c++ glibc-devel \
  zlib-devel libstdc++ libstdc++-devel \
  # Dotnet
  dotnet-sdk-7.0 \
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
  e2fsprogs zsh && \
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
  useradd -u ${USER_UID} -g 0 -G wheel,root -d ${HOME} --shell /bin/zsh  -c "${USER_NAME} user" -m ${USER_NAME} && \
  # Generate passwd.template
  cat /etc/passwd | sed s#user:x.*#user:x:\${USER_ID}:\${GROUP_ID}::\${HOME}:/bin/zsh#g > ${HOME}/passwd.template && \
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
  ##################################################################
  ### install gcloud
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /tmp/google-cloud-sdk-${GCLOUD_VERSION}-linux-x86_64.tar.gz \
  --url "https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-${GCLOUD_VERSION}-linux-x86_64.tar.gz" && \
  echo "${GCLOUD_SHA256SUM} /tmp/google-cloud-sdk-${GCLOUD_VERSION}-linux-x86_64.tar.gz" | sha256sum -c - && \
  tar -zxf /tmp/google-cloud-sdk-${GCLOUD_VERSION}-linux-x86_64.tar.gz --no-same-owner -C ${HOME} && \
  rm -f /tmp/google-cloud-sdk-${GCLOUD_VERSION}-linux-x86_64.tar.gz && \
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
  ##################################################################
  ### install kamel
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /tmp/camel-k-client-${KAMEL_VERSION}-linux-64bit.tar.gz \
  --url "https://github.com/apache/camel-k/releases/download/v${KAMEL_VERSION}/camel-k-client-${KAMEL_VERSION}-linux-64bit.tar.gz" && \
  tar -zxf /tmp/camel-k-client-${KAMEL_VERSION}-linux-64bit.tar.gz --no-same-owner -C /usr/local/bin kamel && \
  chmod 0755 /usr/local/bin/kamel && \
  rm -f /tmp/camel-k-client-${KAMEL_VERSION}-linux-64bit.tar.gz && \
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
  ##################################################################
  ### install cosign
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /usr/local/bin/cosign \
  --url "https://github.com/sigstore/cosign/releases/download/v${COSIGN_VERSION}/cosign-linux-amd64" && \
  echo "${COSIGN_SHA256SUM} /usr/local/bin/cosign" | sha256sum -c - && \
  chmod 0755 /usr/local/bin/cosign && \
  ##################################################################
  ### install cosign - sget
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /usr/local/bin/sget \
  --url "https://github.com/sigstore/cosign/releases/download/v${COSIGN_VERSION}/sget-linux-amd64" && \
  echo "${SGET_SHA256SUM} /usr/local/bin/sget" | sha256sum -c - && \
  chmod 0755 /usr/local/bin/sget && \
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
  ##################################################################
  ### install oc,kubectl
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /tmp/openshift-client-linux-${OC_VERSION}.tar.gz \
  --url "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/${OC_VERSION}/openshift-client-linux-${OC_VERSION}.tar.gz" && \
  echo "${OC_SHA256SUM} /tmp/openshift-client-linux-${OC_VERSION}.tar.gz" | sha256sum -c - && \
  tar -zxf /tmp/openshift-client-linux-${OC_VERSION}.tar.gz --no-same-owner -C /usr/local/bin oc kubectl && \
  chmod 0755 /usr/local/bin/{oc,kubectl} && \
  rm -f /tmp/openshift-client-linux-${OC_VERSION}.tar.gz && \
  ##################################################################
  ### install cnquery
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /tmp/cnquery_${CNQUERY_VERSION}_linux_amd64.tar.gz \
  --url "https://github.com/mondoohq/cnquery/releases/download/v${CNQUERY_VERSION}/cnquery_${CNQUERY_VERSION}_linux_amd64.tar.gz" && \
  echo "${CNQUERY_SHA256SUM} /tmp/cnquery_${CNQUERY_VERSION}_linux_amd64.tar.gz" | sha256sum -c - && \
  tar -zxf /tmp/cnquery_${CNQUERY_VERSION}_linux_amd64.tar.gz --no-same-owner -C /usr/local/bin && \
  chmod 0755 /usr/local/bin/cnquery && \
  rm -f /tmp/cnquery_${CNQUERY_VERSION}_linux_amd64.tar.gz && \
  ##################################################################
  ### install cnspec
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /tmp/cnspec_${CNSPEC_VERSION}_linux_amd64.tar.gz \
  --url "https://github.com/mondoohq/cnspec/releases/download/v${CNSPEC_VERSION}/cnspec_${CNSPEC_VERSION}_linux_amd64.tar.gz" && \
  echo "${CNSPEC_SHA256SUM} /tmp/cnspec_${CNSPEC_VERSION}_linux_amd64.tar.gz" | sha256sum -c - && \
  tar -zxf /tmp/cnspec_${CNSPEC_VERSION}_linux_amd64.tar.gz --no-same-owner -C /usr/local/bin && \
  chmod 0755 /usr/local/bin/cnspec && \
  rm -f /tmp/cnspec_${CNSPEC_VERSION}_linux_amd64.tar.gz && \
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
  echo "${KN_SHA256SUM} /usr/local/bin/kn" | sha256sum -c - && \
  chmod 0755 /usr/local/bin/kn && \
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
  echo "${HADOLINT_SHA256SUM} /usr/local/bin/hadolint" | sha256sum -c - && \
  chmod 0755 /usr/local/bin/hadolint && \
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
  echo "${ODO_SHA256SUM} /usr/local/bin/odo" | sha256sum -c - && \
  chmod 0755 /usr/local/bin/odo && \
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
  echo "${SKAFFOLD_SHA256SUM} /usr/local/bin/skaffold" | sha256sum -c - && \
  chmod 0755 /usr/local/bin/skaffold && \
  #################################################################
  # install wifwif
  #################################################################
  curl --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --progress-bar --location --fail --show-error \
  --output /tmp/wifwif_${WIFWIF_VERSION}_linux_amd64.zip \
  --url "https://storage.googleapis.com/iac-team-prod-artifacts/wifwif/${WIFWIF_VERSION}/wifwif_${WIFWIF_VERSION}_linux_amd64.zip" && \
  unzip /tmp/wifwif_${WIFWIF_VERSION}_linux_amd64.zip -d /tmp && \
  mv /tmp/wifwif /usr/local/bin/wifwif && \
  chmod 0755 /usr/local/bin/wifwif && \
  rm -f /tmp/wifwif_${WIFWIF_VERSION}_linux_amd64.zip && \
  ##################################################################
  ### install google cloudcode
  ##################################################################
  mkdir -p ${HOME}/vscode-extensions && \
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output ${HOME}/vscode-extensions/cloudcode.vsix \
  --url "https://storage.googleapis.com/iac-team-prod-artifacts/vscode-extensions/GoogleCloudTools.cloudcode-${CLOUD_CODE_VERSION}.vsix" && \
  chmod 0755 ${HOME}/vscode-extensions/cloudcode.vsix && \
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
  echo "${CLOUD_SQL_PROXY_SHA256SUM} /usr/local/bin/cloud_sql_proxy" | sha256sum -c - && \
  chmod 0755 /usr/local/bin/cloud_sql_proxy && \
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
  echo "${ROXCTL_SHA256SUM} /usr/local/bin/roxctl" | sha256sum -c - && \
  chmod 0755 /usr/local/bin/roxctl && \
  ##################################################################
  ### install helm
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /tmp/helm-v${HELM_VERSION}-linux-amd64.tar.gz \
  --url "https://get.helm.sh/helm-v${HELM_VERSION}-linux-amd64.tar.gz" && \
  echo "${HELM_SHA256SUM} /tmp/helm-v${HELM_VERSION}-linux-amd64.tar.gz" | sha256sum -c - && \
  tar -zxf /tmp/helm-v${HELM_VERSION}-linux-amd64.tar.gz --no-same-owner -C /usr/local/bin --strip-components=1 linux-amd64/helm && \
  chmod 0755 /usr/local/bin/helm && \
  rm -f /tmp/helm-v${HELM_VERSION}-linux-amd64.tar.gz && \
  ##################################################################
  ### install gh
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /tmp/gh_${GH_VERSION}_linux_amd64.tar.gz \
  --url "https://github.com/cli/cli/releases/download/v${GH_VERSION}/gh_${GH_VERSION}_linux_amd64.tar.gz" && \
  echo "${GH_SHA256SUM} /tmp/gh_${GH_VERSION}_linux_amd64.tar.gz" | sha256sum -c - && \
  tar -xzf /tmp/gh_${GH_VERSION}_linux_amd64.tar.gz --no-same-owner -C /usr/local/bin --strip-components=2 gh_${GH_VERSION}_linux_amd64/bin/gh && \
  chmod 0755 /usr/local/bin/gh && \
  rm -f /tmp/gh_${GH_VERSION}_linux_amd64.tar.gz && \
  ##################################################################
  ### install kustomize
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /tmp/kustomize_v${KUSTOMIZE_VERSION}_linux_amd64.tar.gz \
  --url "https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv${KUSTOMIZE_VERSION}/kustomize_v${KUSTOMIZE_VERSION}_linux_amd64.tar.gz" && \
  echo "${KUSTOMIZE_SHA256SUM} /tmp/kustomize_v${KUSTOMIZE_VERSION}_linux_amd64.tar.gz" | sha256sum -c - && \
  tar -xzf /tmp/kustomize_v${KUSTOMIZE_VERSION}_linux_amd64.tar.gz --no-same-owner -C /usr/local/bin kustomize && \
  chmod 0755 /usr/local/bin/kustomize && \
  rm -f kustomize_v${KUSTOMIZE_VERSION}_linux_amd64.tar.gz && \
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
  echo "${ARGOCD_VAULT_PLUGIN_SHA256SUM} /usr/local/bin/argocd-vault-plugin" | sha256sum -c - && \
  chmod 0755 /usr/local/bin/argocd-vault-plugin && \
  ##################################################################
  ### install tkn
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /tmp/tkn_${TKNCLI_VERSION}_Linux_x86_64.tar.gz \
  --url "https://github.com/tektoncd/cli/releases/download/v${TKNCLI_VERSION}/tkn_${TKNCLI_VERSION}_Linux_x86_64.tar.gz" && \
  echo "${TKNCLI_SHA256SUM} /tmp/tkn_${TKNCLI_VERSION}_Linux_x86_64.tar.gz" | sha256sum -c - && \
  tar -xzf /tmp/tkn_${TKNCLI_VERSION}_Linux_x86_64.tar.gz --no-same-owner -C /usr/local/bin tkn && \
  chmod 0755 /usr/local/bin/tkn && \
  rm -f /tmp/tkn_${TKNCLI_VERSION}_Linux_x86_64.tar.gz && \
  ##################################################################
  ### install terraform
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /tmp/terraform_${TERRAFORM_VERSION}_linux_amd64.zip \
  --url "https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip" && \
  echo "${TERRAFORM_SHA256SUM} /tmp/terraform_${TERRAFORM_VERSION}_linux_amd64.zip" | sha256sum -c - && \
  unzip /tmp/terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/local/bin && \
  chmod 0755 /usr/local/bin/terraform && \
  rm -rf /tmp/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
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
  echo "${RCLONE_SHA256SUM} /tmp/rclone-v${RCLONE_VERSION}-linux-amd64.zip" | sha256sum -c - && \
  unzip /tmp/rclone-v${RCLONE_VERSION}-linux-amd64.zip -d /tmp && \
  mv /tmp/rclone-v${RCLONE_VERSION}-linux-amd64/rclone /usr/local/bin/rclone && \
  chmod 0755 /usr/local/bin/rclone && \
  rm -rf /tmp/rclone-v${RCLONE_VERSION}-linux-amd64.zip /tmp/rclone-v${RCLONE_VERSION}-linux-amd64 && \
  mkdir -p ${HOME} && \
  echo "[gcp]\ntype = google cloud storage" > ${HOME}/rclone.conf && \
  ##################################################################
  ### install tilt
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /tmp/tilt.${TILT_VERSION}.linux.x86_64.tar.gz \
  --url "https://github.com/tilt-dev/tilt/releases/download/v${TILT_VERSION}/tilt.${TILT_VERSION}.linux.x86_64.tar.gz" && \
  echo "${TILT_SHA256SUM} /tmp/tilt.${TILT_VERSION}.linux.x86_64.tar.gz" | sha256sum -c - && \
  tar -zxf /tmp/tilt.${TILT_VERSION}.linux.x86_64.tar.gz --no-same-owner -C /usr/local/bin tilt && \
  chmod 0755 /usr/local/bin/tilt && \
  rm -f tilt.${TILT_VERSION}.linux.x86_64.tar.gz && \
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
  --url "https://github.com/aquasecurity/trivy/releases/download/v${TRIVY_VERSION}/trivy_${TRIVY_VERSION}_Linux-64bit.tar.gz" && \
  echo "${TRIVY_SHA256SUM} /tmp/trivy_${TRIVY_VERSION}_Linux-64bit.tar.gz" | sha256sum -c - && \
  mkdir -p /tmp/trivy ${HOME}/contrib && \
  tar -zxf /tmp/trivy_${TRIVY_VERSION}_Linux-64bit.tar.gz --no-same-owner -C /tmp/trivy && \
  mv /tmp/trivy/trivy /usr/local/bin/trivy && \
  mv /tmp/trivy/contrib/*.tpl ${HOME}/contrib/ && \
  rm -rf /tmp/trivy /tmp/trivy_${TRIVY_VERSION}_Linux-64bit.tar.gz && \
  chmod 0755 /usr/local/bin/trivy && \
  ##################################################################
  ### install conftest
  ##################################################################
  curl --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --insecure --progress-bar --location \
  --output /tmp/conftest_${CONFTEST_VERSION}_Linux_x86_64.tar.gz \
  --url "https://github.com/open-policy-agent/conftest/releases/download/v${CONFTEST_VERSION}/conftest_${CONFTEST_VERSION}_Linux_x86_64.tar.gz" && \
  echo "${CONFTEST_SHA256SUM} /tmp/conftest_${CONFTEST_VERSION}_Linux_x86_64.tar.gz" | sha256sum -c - && \
  tar -xzf /tmp/conftest_${CONFTEST_VERSION}_Linux_x86_64.tar.gz --no-same-owner -C /usr/local/bin conftest && \
  chmod 0755 /usr/local/bin/conftest && \
  rm -f /tmp/conftest_${CONFTEST_VERSION}_Linux_x86_64.tar.gz && \
  #################################################################
  ## install vale
  #################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /tmp/vale_${VALE_VERSION}_Linux_64-bit.tar.gz \
  --url "https://github.com/errata-ai/vale/releases/download/v${VALE_VERSION}/vale_${VALE_VERSION}_Linux_64-bit.tar.gz" && \
  echo "${VALE_SHA256SUM} /tmp/vale_${VALE_VERSION}_Linux_64-bit.tar.gz" | sha256sum -c - && \
  tar -xzf /tmp/vale_${VALE_VERSION}_Linux_64-bit.tar.gz --no-same-owner -C /usr/local/bin vale && \
  rm -rf /tmp/vale_${VALE_VERSION}_Linux_64-bit.tar.gz && \
  ##################################################################
  ### install pwsh
  ##################################################################
  rpm -Uvh https://github.com/PowerShell/PowerShell/releases/download/v${PS_VERSION}/powershell-${PS_VERSION}-1.rh.x86_64.rpm && \
  mkdir -p ${HOME}/.local/share/powershell/PSReadLine && \
  ##################################################################
  # Install Roboconfig
  ##################################################################
  pwsh -f /roboconfig/bootstrap.ps1 -RoboConfigDestination /roboconfig -ZipLocation "https://www.gsoutils.ford.com/powershell/api/v2/package/roboconfig/${ROBOCONFIG_VERSION}" && \
  ##################################################################
  # configure python
  ##################################################################
  # pip install --install-option="--prefix=$HOME/local" pydoc yq
  update-alternatives --set python3 /usr/bin/python3.9 && \
  ln -s /usr/bin/python3.9 /usr/local/bin/python && \
  ln -s /usr/bin/pip3 /usr/local/bin/pip && \
  #python -m pip install -q --no-warn-script-location python-language-server[all] ptvsd jedi ipykernel jupyter wrapt && \
  #pip3 install --no-cache-dir -U crcmod pipenv python-language-server[yapf] ptvsd jedi ipykernel jupyter wrapt && \
  #gsutil version -l && \
  ##################################################################
  # Install rust
  ##################################################################
  ## https://stackoverflow.com/a/38396533
  ## source "$HOME/.cargo/env"
  curl --proto '=https' --tlsv1.2 -sSfo rustup https://sh.rustup.rs && \
  chmod +x rustup && \
  mv rustup /usr/bin/ && \
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
  #################################################################
  # install fonts
  #################################################################
  mkdir -p ${HOME}/.local/share/fonts && \
  curl --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" --retry "${CURL_RETRY:-5}" --retry-delay "${CURL_RETRY_DELAY:-0}" --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" --progress-bar --location --fail --show-error --output "${HOME}/.local/share/fonts/Go Mono Nerd Font Complete Mono.ttf" --url "https://github.com/ryanoasis/nerd-fonts/blob/v${NERD_FONT_VERSION}/patched-fonts/Go-Mono/Regular/complete/Go%20Mono%20Nerd%20Font%20Complete%20Mono.ttf?raw=true" && \
  curl --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" --retry "${CURL_RETRY:-5}" --retry-delay "${CURL_RETRY_DELAY:-0}" --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" --progress-bar --location --fail --show-error --output "${HOME}/.local/share/fonts/Meslo LG S DZ Regular Nerd Font Complete Mono.ttf" --url "https://github.com/ryanoasis/nerd-fonts/blob/v${NERD_FONT_VERSION}/patched-fonts/Meslo/S-DZ/Regular/complete/Meslo%20LG%20S%20DZ%20Regular%20Nerd%20Font%20Complete%20Mono.ttf?raw=true" && \
  curl --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" --retry "${CURL_RETRY:-5}" --retry-delay "${CURL_RETRY_DELAY:-0}" --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" --progress-bar --location --fail --show-error --output "${HOME}/.local/share/fonts/Sauce Code Pro Nerd Font Complete Mono.ttf" --url "https://github.com/ryanoasis/nerd-fonts/blob/v${NERD_FONT_VERSION}/patched-fonts/SourceCodePro/Regular/complete/Sauce%20Code%20Pro%20Nerd%20Font%20Complete%20Mono.ttf?raw=true" && \
  curl --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" --retry "${CURL_RETRY:-5}" --retry-delay "${CURL_RETRY_DELAY:-0}" --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" --progress-bar --location --fail --show-error --output "${HOME}/.local/share/fonts/Noto Mono Nerd Font Complete Mono.ttf" --url "https://github.com/ryanoasis/nerd-fonts/blob/v${NERD_FONT_VERSION}/patched-fonts/Noto/Mono/complete/Noto%20Mono%20Nerd%20Font%20Complete%20Mono.ttf?raw=true" && \
  curl --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" --retry "${CURL_RETRY:-5}" --retry-delay "${CURL_RETRY_DELAY:-0}" --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" --progress-bar --location --fail --show-error --output "${HOME}/.local/share/fonts/Terminess (TTF) Nerd Font Complete Mono.ttf" --url "https://github.com/ryanoasis/nerd-fonts/blob/v${NERD_FONT_VERSION}/patched-fonts/Terminus/terminus-ttf-4.40.1/Regular/complete/Terminess%20(TTF)%20Nerd%20Font%20Complete%20Mono.ttf?raw=true" && \
  fc-cache -fv && \
  #################################################################
  # Add .zsh configuration
  #################################################################
  cp /.p10k.zsh ${HOME}/.p10k.zsh && \
  cp /.zshrc ${HOME}/.zshrc && \
  cp /.zprofile ${HOME}/.zprofile && \
  #################################################################
  # install oh-my-zsh
  #################################################################
  git clone https://github.com/robbyrussell/oh-my-zsh.git ${HOME}/.oh-my-zsh && \
  cp $HOME/.oh-my-zsh/templates/zshrc.zsh-template $HOME/.zshrc && \
  rm -rf ${HOME}/.oh-my-zsh/.git && \
  # Install powerlevel10k theme
  git clone https://github.com/romkatv/powerlevel10k.git ${HOME}/.oh-my-zsh/custom/themes/powerlevel10k && \
  rm -rf ${HOME}/.oh-my-zsh/custom/themes/powerlevel10k/.git && \
  # Install syntax highlighting
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${HOME}/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting && \
  rm -rf ${HOME}/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting.git && \
  # Install zsh autosuggestions
  git clone https://github.com/zsh-users/zsh-autosuggestions.git ${HOME}/.oh-my-zsh/custom/plugins/zsh-autosuggestions && \
  rm -rf ${HOME}/.oh-my-zsh/custom/plugins/zsh-autosuggestions.git && \
  # Install zsh completions
  git clone https://github.com/zsh-users/zsh-completions.git ${HOME}/.oh-my-zsh/custom/plugins/zsh-completions && \
  rm -rf ${HOME}/.oh-my-zsh/custom/plugins/zsh-autosuggestions.git && \
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
  #################################################################
  # ssh configs
  #################################################################
  mkdir -p ${HOME}/.ssh && \
  ln -sf /checode/.ssh ${HOME}/.ssh && \
  # Copy the global git configuration to user config as global /etc/gitconfig
  # file may be overwritten by a mounted file at runtime
  cp /etc/gitconfig ${HOME}/.gitconfig && \
  chown -R ${USER_UID}:0 ${HOME} /etc/passwd /etc/group /home /entrypoint.sh && \
  chmod -R 0775 ${HOME} /etc/passwd /etc/group /home /entrypoint.sh && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.*
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
# echo "${GOMPLATE_SHA256SUM} /usr/local/bin/gomplate" | sha256sum -c - && \
# chmod 0755 /usr/local/bin/gomplate && \
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
##################################################################
### install grype
##################################################################
# curl --progress-bar --location --fail --show-error \
# --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
# --retry "${CURL_RETRY:-5}" \
# --retry-delay "${CURL_RETRY_DELAY:-0}" \
# --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
# --output /tmp/grype_${GRYPE_VERSION}_linux_amd64.tar.gz \
# --url "https://github.com/anchore/grype/releases/download/v${GRYPE_VERSION}/grype_${GRYPE_VERSION}_linux_amd64.tar.gz" && \
# echo "${GRYPE_SHA256SUM} /tmp/grype_${GRYPE_VERSION}_linux_amd64.tar.gz" | sha256sum -c - && \
# tar -zxf /tmp/grype_${GRYPE_VERSION}_linux_amd64.tar.gz --no-same-owner -C /usr/local/bin grype && \
# chmod 0755 /usr/local/bin/grype && \
# rm -f /tmp/grype_${GRYPE_VERSION}_linux_amd64.tar.gz && \
##################################################################
### install syft
##################################################################
# curl --progress-bar --location --fail --show-error \
# --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
# --retry "${CURL_RETRY:-5}" \
# --retry-delay "${CURL_RETRY_DELAY:-0}" \
# --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
# --output /tmp/${SYFT_VERSION}/syft_${SYFT_VERSION}_linux_amd64.tar.gz \
# --url "https://github.com/anchore/syft/releases/download/v${SYFT_VERSION}/syft_${SYFT_VERSION}_linux_amd64.tar.gz" && \
# echo "${SYFT_SHA256SUM} /tmp/${SYFT_VERSION}/syft_${SYFT_VERSION}_linux_amd64.tar.gz" | sha256sum -c - && \
# tar -zxf - --no-same-owner -C /usr/local/bin syft && \
# chmod 0755 /usr/local/bin/syft && \
# rm -f ${SYFT_VERSION}/syft_${SYFT_VERSION}_linux_amd64.tar.gz && \
##################################################################
### install docker-credential-gcr
##################################################################
# curl \
# --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
# --retry "${CURL_RETRY:-5}" \
# --retry-delay "${CURL_RETRY_DELAY:-0}" \
# --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
# --progress-bar --location --fail --show-error \
# --output /tmp/docker-credential-gcr_linux_amd64-${DOCKER_CREDENTIAL_GCR_VERSION}.tar.gz \
# --url "https://github.com/GoogleCloudPlatform/docker-credential-gcr/releases/download/v${DOCKER_CREDENTIAL_GCR_VERSION}/docker-credential-gcr_linux_amd64-${DOCKER_CREDENTIAL_GCR_VERSION}.tar.gz" && \
# echo "${DOCKER_CREDENTIAL_GCR_SHA256SUM} /tmp/docker-credential-gcr_linux_amd64-${DOCKER_CREDENTIAL_GCR_VERSION}.tar.gz" | sha256sum -c - && \
# tar -xzf /tmp/docker-credential-gcr_linux_amd64-${DOCKER_CREDENTIAL_GCR_VERSION}.tar.gz --no-same-owner /usr/local/bin/ docker-credential-gcr && \
# chmod 0755 /usr/local/bin/docker-credential-gcr && \
# rm -f /tmp/docker-credential-gcr_linux_amd64-${DOCKER_CREDENTIAL_GCR_VERSION}.tar.gz && \
##################################################################
### install lombok
##################################################################
# curl --progress-bar --location --fail --show-error \
#  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
#  --retry "${CURL_RETRY:-5}" \
#  --retry-delay "${CURL_RETRY_DELAY:-0}" \
#  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
#  --output /usr/local/lib/lombok.jar \
#  --url "https://projectlombok.org/downloads/lombok-${LOMBOK_VERSION}.jar" && \
##################################################################
### install teller
##################################################################
# curl --progress-bar --location --fail --show-error \
# --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
# --retry "${CURL_RETRY:-5}" \
# --retry-delay "${CURL_RETRY_DELAY:-0}" \
# --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
# --output /tmp/teller_${TELLER_VERSION}_Linux_x86_64.tar.gz \
# --url "https://github.com/tellerops/teller/releases/download/v${TELLER_VERSION}/teller_${TELLER_VERSION}_Linux_x86_64.tar.gz" && \
# echo "${TELLER_SHA256SUM} /tmp/teller_${TELLER_VERSION}_Linux_x86_64.tar.gz" | sha256sum -c - && \
# tar -zxf /tmp/teller_${TELLER_VERSION}_Linux_x86_64.tar.gz --no-same-owner -C /usr/local/bin teller && \
# chmod 0755 /usr/local/bin/teller && \
# rm -f /tmp/teller_${TELLER_VERSION}_Linux_x86_64.tar.gz && \

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
  ##################################################################
  # configure rust
  ##################################################################
  rustup -y --no-modify-path --profile minimal -c rust-src -c rust-analysis -c rls && \
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
  ##################################################################
  # install krew plugin
  ##################################################################
  kubectl krew install slice && \
  kubectl krew install neat && \
  kubectl krew install ns && \
  kubectl krew install ctx && \
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
  ##################################################################
  ## NodeJS
  ## nvm ls, nvm list available, nvm ls-remote | grep -i 'latest'
  ##################################################################
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v${NVM_VERSION}/install.sh | bash && \
  ##source ${HOME}/.bashrc && \
  source ${HOME}/.zshrc && \
  nvm install v${NODEJS_18_VERSION} && \
  nvm install v${NODEJS_16_VERSION} && \
  nvm alias default v${NODEJS_DEFAULT_VERSION} && \
  nvm use v${NODEJS_DEFAULT_VERSION} && \
  npm install --global yarn@v1.22.19 && \
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
  chmod -R 0775 ${HOME} && \
  chown -R ${USER_UID}:0 ${HOME}

WORKDIR /projects

ENTRYPOINT ["/entrypoint.sh"]

CMD ["tail", "-f", "/dev/null"]
