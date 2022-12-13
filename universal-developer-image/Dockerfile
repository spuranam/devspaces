FROM registry.access.redhat.com/ubi8/ubi:8.7-1026
#FROM registry.access.redhat.com/ubi9/ubi:9.0.0-1640.1665068441

ARG \
  UDI_VERSION=20221008-1345 \
  ARGOCD_VAULT_PLUGIN_VERSION=1.13.1 \
  ARGOCD_VAULT_PLUGIN_SHA256SUM=957001f4bcd5db9aca468fbea9afa19d5088c06708fbcf97b07ba8e369447932 \
  BATS_VERSION=1.8.2 \
  CNQUERY_SHA256SUM=02e2bee517824a0c7c7b66e1b2e78071982f2d059478e4986507cf2d8b4707bf \
  CNQUERY_VERSION=7.7.0 \
  CNSPEC_SHA256SUM=2fe935c2edad6cd4acbf4aab372fb1d0183ad1fe2c8be7fc25d1814fa0f617ce \
  CNSPEC_VERSION=7.7.0 \
  CONFTEST_SHA256SUM=d98783276c4fd47c779a1ece4c0decba9ee6462687839d25389882a468c362cc \
  CONFTEST_VERSION=0.36.0 \
  COSIGN_SHA256SUM=a50651a67b42714d6f1a66eb6773bf214dacae321f04323c0885f6a433051f95 \
  COSIGN_VERSION=1.13.1 \
  FD_VERSION=8.6.0 \
  E2FSPROGS_VERSION=1.46.5 \
  GCLOUD_SHA256SUM=5b99214d0730e590c54c9c1a4d7bd99bcc3bb9b8f8c8491b07194c6fda47bcda \
  GCLOUD_VERSION=411.0.0 \
  GH_SHA256SUM=3bc7cd3b2fd9082218b8246595673f55badb351db1b9e627eec121beb8b26450 \
  GH_VERSION=2.20.2 \
  GO_SHA256SUM=c9c08f783325c4cf840a94333159cc937f05f75d36a8b307951d5bd959cf2ab8 \
  GO_VERSION=1.19.4 \
  GRADLE_SHA256SUM=7ba68c54029790ab444b39d7e293d3236b2632631fb5f2e012bb28b4ff669e4b \
  GRADLE_VERSION=7.6 \
  HADOLINT_SHA256SUM=56de6d5e5ec427e17b74fa48d51271c7fc0d61244bf5c90e828aab8362d55010 \
  HADOLINT_VERSION=2.12.0 \
  HELM_SHA256SUM=2315941a13291c277dac9f65e75ead56386440d3907e0540bf157ae70f188347 \
  HELM_VERSION=3.10.2 \
  JDK_8_URL=https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u352-b08/OpenJDK8U-jdk_x64_linux_hotspot_8u352b08.tar.gz \
  JDK_8_SHA256SUM=1633bd7590cb1cd72f5a1378ae8294451028b274d798e2a4ac672059a2f00fee \
  JDK_11_URL=https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.17%2B8/OpenJDK11U-jdk_x64_linux_hotspot_11.0.17_8.tar.gz \
  JDK_11_SHA256SUM=b8d46ed08ef4859476fe6421a7690d899ed83dce63f13fd894f994043177ef3c \
  JDK_17_URL=https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.5%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.5_8.tar.gz \
  JDK_17_SHA256SUM=482180725ceca472e12a8e6d1a4af23d608d78287a77d963335e2a0156a020af \
  K9S_SHA256SUM=f774bb75045e361e17a4f267491c5ec66f41db7bffd996859ffb1465420af249 \
  K9S_VERSION=0.26.7 \
  KAMEL_VERSION=1.10.3 \
  KN_SHA256SUM=bb0e52175a08dcb1ef0ee4c519959862defea1042a77f62047b3114bb55bece5 \
  KN_VERSION=1.8.1 \
  KREW_SHA256SUM=5df32eaa0e888a2566439c4ccb2ef3a3e6e89522f2f2126030171e2585585e4f \
  KREW_VERSION=0.4.3 \
  KUBECONFORM_SHA256SUM=5b39700d0924072313ad7e898b6101ea0ebdd3634301b1176b25a8572e62190e \
  KUBECONFORM_VERSION=0.5.0 \
  KUBECTX_SHA256SUM=db5a48e85ff4d8c6fa947e3021e11ba4376f9588dd5fa779a80ed5c18287db22 \
  KUBECTX_VERSION=0.9.4 \
  KUBENS_SHA256SUM=8b3672961fb15f8b87d5793af8bd3c1cca52c016596fbf57c46ab4ef39265fcd \
  KUBENS_VERSION=0.9.4 \
  KUSTOMIZE_SHA256SUM=701e3c4bfa14e4c520d481fdf7131f902531bfc002cb5062dcf31263a09c70c9 \
  KUSTOMIZE_VERSION=4.5.7 \
  MAVEN_VERSION=3.8.6 \
  MAVEN_SHA512SUM=f790857f3b1f90ae8d16281f902c689e4f136ebe584aba45e4b1fa66c80cba826d3e0e52fdd04ed44b4c66f6d3fe3584a057c26dfcac544a60b301e6d0f91c26 \
  MANDREL_SHA256SUM=72ba94f4ca8e48eaa905433a6d0cfff5e7a657fb4f5419e86d7b8f5332ed0345 \
  MANDREL_VERSION=22.3.0.1 \
  NODEJS_18_SHA256SUM=a8fcacb8033504e6d704bdee821f7005ee3774db25c799bcf2a13b5bda7de172 \
  NODEJS_18_VERSION=18.12.1 \
  OC_SHA256SUM=2263c2865464b8906812b4c4520eff034fccd2326b5de1aa730d208667c09f31 \
  OC_VERSION=4.11.18 \
  ODO_SHA256SUM=0de4a2410fcc7a4683050fc101b18d9262cd436aabdc545d94899fca558becd9 \
  ODO_VERSION=3.3.0 \
  OHMYPOSH_SHA256SUM=D16734ECAE8C682CE9B91F5FC18CFC8D8C8B9CDDA44D691B2FB33AAB17610508 \
  OHMYPOSH_VERSION=12.26.1 \
  PS_SHA256SUM=3C4B9BEB52CC4F52C52DFBA59346E23DF38CFF9FE18D534F83CB902472D28B37 \
  PS_VERSION=7.3.0 \
  PSEDTSVC_VERSION=3.4.5 \
  RCLONE_SHA256SUM=fd6bc19cc7fadb13538cc109128bf92ef47762a83a3eaf2ab699b03bb2a1fe32 \
  RCLONE_VERSION=1.60.1 \
  RIPGREP_VERSION=13.0.0 \
  ROBOCONFIG_VERSION=0.28.0 \
  ROXCTL_SHA256SUM=5d571be6ef679cc979dc943be920116f70c2c80e2193fd006b7657ae4591988d \
  ROXCTL_VERSION=3.73.0 \
  RUSTUPINIT_SHA256SUM=5cc9ffd1026e82e7fb2eec2121ad71f4b0f044e88bca39207b3f6b769aaa799c \
  RUSTUPINIT_VERSION=1.25.1 \
  SGET_SHA256SUM=36c25be6bb496ccd57e676a93edfb05931517443e6f5ce1e51f08650c1bb260f \
  SHELLCHECK_VERSION=0.8.0 \
  SKAFFOLD_SHA256SUM=7d544461d53d541a6c1e6ba721a8e9f502d6cb240453faf31513f9e4d9b157c1 \
  SKAFFOLD_VERSION=2.0.3 \
  SWITCHER_VERSION=0.7.2 \
  TERRAFORM_SHA256SUM=bb44a4c2b0a832d49253b9034d8ccbd34f9feeb26eda71c665f6e7fa0861f49b \
  TERRAFORM_VERSION=1.3.6 \
  TKNCLI_SHA256SUM=72687cca6e6573a6e6801344e53814a530a071f2ce027b5b0efbc4819181c794 \
  TKNCLI_VERSION=0.28.0 \
  TRIVY_SHA256SUM=ebc1dd4d4c0594028d6a501dfc1a73d56add20b29d3dee5ab6e64aac94b1d526 \
  TRIVY_VERSION=0.35.0 \
  TILT_SHA256SUM=81e8ab77a2c820e4e9372337b199c2e1b455a7c21c16b1c85cd43cf7f88e7153 \
  TILT_VERSION=0.30.13 \
  VALE_SHA256SUM=26e77f466450675f4caea523c900991ecd19b7032e3b38f557cb5d75cdd2a6e8 \
  VALE_VERSION=2.21.2 \
  VAULT_SHA256SUM=116c143de377a77a7ea455a367d5e9fe5290458e8a941a6e2dd85d92aaedba67 \
  VAULT_VERSION=1.12.2 \
  WIFWIF_VERSION=1.2.5 \
  YQ_SHA256SUM=813d7d5b16a627a1fbbd763cb508fc8f143122f8f7195c872e7367d6295a331a \
  YQ_VERSION=4.30.5

ENV \
  HOME=/home/user \
  USER_NAME=user \
  USER_UID=1001

ENV \
  _BUILDAH_STARTED_IN_USERNS="" \
  BUILDAH_ISOLATION=chroot \
  CARGO_HOME=${HOME}/.cargo \
  CPATH="/usr/include${CPATH:+:${CPATH}}" \
  DESCRIPTION="Image with developers tools, languages SDK and runtimes included." \
  DOTNET_SKIP_FIRST_TIME_EXPERIENCE=true \
  DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=false \
  #GOPATH=/projects/.che/gopath \
  JAVA_HOME=/opt/java/openjdk/11 \
  LANG='en_US.UTF-8' \
  LANGUAGE='en_US:en' \
  LC_ALL='en_US.UTF-8' \
  ## https://github.com/gitpod-io/gitpod/blob/main/dev/image/Dockerfile
  ## https://techglimpse.com/error-loading-shared-libraries-libcrypto-so-1-1/
  ## https://www.usessionbuddy.com/post/node-error-while-loading-shared-libraries-libbrotlidec.so.1-cannot-open-shared-object-file/
  ## https://refspecs.linuxfoundation.org/FHS_3.0/fhs/index.html
  LD_LIBRARY_PATH="/usr/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}" \
  PKG_CONFIG_PATH="/usr/lib64/pkgconfig${PKG_CONFIG_PATH:+:${PKG_CONFIG_PATH}}" \
  POWERSHELL_TELEMETRY_OPTOUT=true \
  PSModuleAnalysisCachePath=/var/cache/microsoft/powershell/PSModuleAnalysisCache/ModuleAnalysisCache \
  PYTHON_VERSION=3.9 \
  PYTHONIOENCODING=UTF-8 \
  PYTHONUNBUFFERED=1 \
  #PIP_NO_CACHE_DIR=off \
  # Instruct pip(env) not to keep a cache of installed packages,
  # to install into the global site-packages and
  # to clear the pipenv cache as well
  #PIPENV_VENV_IN_PROJECT=1 \
  PIP_NO_CACHE_DIR=1 \
  PIPENV_CLEAR=1 \
  PIPENV_SYSTEM=1 \
  PIPENV_VERBOSITY=-1 \
  RCLONE_CONFIG=${HOME}/rclone.conf \
  RUSTUP_HOME=${HOME}/.rustup \
  SUMMARY="Universal developer image" \
  TERM=xterm \
  TZ=UTC \
  XDG_CONFIG_DIRS="/etc/xdg:${XDG_CONFIG_DIRS:-/etc/xdg}" \
  XDG_DATA_DIRS="/usr/share:${XDG_DATA_DIRS:-/usr/local/share:/usr/share}" \
  ZSH_DISABLE_COMPFIX=true \
  PATH="\${HOME}/bin:\${HOME}/.local/bin:\${HOME}/.krew/bin:\${HOME}/.cargo/bin:\${HOME}/node_modules/.bin/:\${HOME}/.npm-global/bin/:/opt/google-cloud-sdk/bin:/opt/maven/bin:/opt/gradle/bin:/usr/local/go/bin:\${JAVA_HOME}/bin:${PATH:-/bin:/usr/bin}"

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
  # mandrel
  glibc-devel zlib-devel gcc freetype-devel libstdc++-static \
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
  #################################################################
  # Configure the locale
  #################################################################
  sed -i 's/^LANG=.*/LANG="en_US.utf8"/' /etc/locale.conf && \
  #################################################################
  # Add user and group first to make sure their IDs get assigned
  # consistently, regardless of whatever dependencies get added
  ################################################################
  mkdir -p /projects ${HOME} ${HOME}/init && \
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
  mkdir -p ${HOME}/.config/containers ${HOME}/.local/share/containers /etc/containers ${HOME}/.docker && \
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
  tar -zxf /tmp/google-cloud-sdk-${GCLOUD_VERSION}-linux-x86_64.tar.gz --no-same-owner --one-top-level=/opt/google-cloud-sdk --strip-components 1 && \
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
  rm -rf /opt/google-cloud-sdk/.install/.backup && \
  rm -rf ${HOME}/.config/gcloud/logs/ && \
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
  ### install krew
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /tmp/krew-linux_amd64.tar.gz \
  --url "https://github.com/kubernetes-sigs/krew/releases/download/v${KREW_VERSION}/krew-linux_amd64.tar.gz" && \
  echo "${KREW_SHA256SUM} /tmp/krew-linux_amd64.tar.gz" | sha256sum -c - && \
  tar -zxf /tmp/krew-linux_amd64.tar.gz --no-same-owner -C /tmp && \
  rm -f /tmp/krew-linux_amd64.tar.gz && \
  chmod 0755 /tmp/krew-linux_amd64 && \
  mkdir -p ${HOME}/.krew/bin && \
  /tmp/krew-linux_amd64 install krew && \
  rm -rf /tmp/krew-linux_amd64 && \
  PATH="${HOME}/.krew/bin:${PATH}" kubectl krew install neat && \
  rm -rf ${HOME}/.krew/index/ && \
  ##################################################################
  ### install fd
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /tmp/fd-v${FD_VERSION}-x86_64-unknown-linux-gnu.tar.gz \
  --url "https://github.com/sharkdp/fd/releases/download/v${FD_VERSION}/fd-v${FD_VERSION}-x86_64-unknown-linux-gnu.tar.gz" && \
  tar -zxf /tmp/fd-v${FD_VERSION}-x86_64-unknown-linux-gnu.tar.gz --no-same-owner -C /usr/local/bin --strip-components=1 fd-v${FD_VERSION}-x86_64-unknown-linux-gnu/fd && \
  chmod 0755 /usr/local/bin/fd && \
  rm -f /tmp/fd-v${FD_VERSION}-x86_64-unknown-linux-gnu.tar.gz && \
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
  rm -f /tmp/kustomize_v${KUSTOMIZE_VERSION}_linux_amd64.tar.gz && \
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
  echo "${YQ_SHA256SUM} /usr/local/bin/yq" | sha256sum -c - && \
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
  ### install kubectx
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /tmp/kubectx_v${KUBECTX_VERSION}_linux_x86_64.tar.gz \
  --url "https://github.com/ahmetb/kubectx/releases/download/v${KUBECTX_VERSION}/kubectx_v${KUBECTX_VERSION}_linux_x86_64.tar.gz" && \
  echo "${KUBECTX_SHA256SUM} /tmp/kubectx_v${KUBECTX_VERSION}_linux_x86_64.tar.gz" | sha256sum -c - && \
  tar -xzf /tmp/kubectx_v${KUBECTX_VERSION}_linux_x86_64.tar.gz --no-same-owner -C /usr/local/bin kubectx && \
  chmod 0755 /usr/local/bin/kubectx && \
  rm -f /tmp/kubectx_v${KUBECTX_VERSION}_linux_x86_64.tar.gz && \
  ##################################################################
  ### install kubens
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /tmp/kubens_v${KUBENS_VERSION}_linux_x86_64.tar.gz \
  --url "https://github.com/ahmetb/kubectx/releases/download/v${KUBENS_VERSION}/kubens_v${KUBENS_VERSION}_linux_x86_64.tar.gz" && \
  echo "${KUBENS_SHA256SUM} /tmp/kubens_v${KUBENS_VERSION}_linux_x86_64.tar.gz" | sha256sum -c - && \
  tar -xzf /tmp/kubens_v${KUBENS_VERSION}_linux_x86_64.tar.gz --no-same-owner -C /usr/local/bin kubens && \
  chmod 0755 /usr/local/bin/kubens && \
  rm -f /tmp/kubens_v${KUBENS_VERSION}_linux_x86_64.tar.gz && \
  ##################################################################
  ### install kubeconform
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /tmp/kubeconform-linux-amd64.tar.gz \
  --url "https://github.com/yannh/kubeconform/releases/download/v${KUBECONFORM_VERSION}/kubeconform-linux-amd64.tar.gz" && \
  echo "${KUBECONFORM_SHA256SUM} /tmp/kubeconform-linux-amd64.tar.gz" | sha256sum -c - && \
  tar -xzf /tmp/kubeconform-linux-amd64.tar.gz --no-same-owner -C /usr/local/bin kubeconform && \
  chmod 0755 /usr/local/bin/kubeconform && \
  rm -f /tmp/kubeconform-linux-amd64.tar.gz && \
  ##################################################################
  ### install k9s
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /tmp/k9s_Linux_x86_64.tar.gz \
  --url "https://github.com/derailed/k9s/releases/download/v${K9S_VERSION}/k9s_Linux_x86_64.tar.gz" && \
  echo "${K9S_SHA256SUM} /tmp/k9s_Linux_x86_64.tar.gz" | sha256sum -c - && \
  tar -xzf /tmp/k9s_Linux_x86_64.tar.gz --no-same-owner -C /usr/local/bin k9s && \
  chmod 0755 /usr/local/bin/k9s && \
  rm -f /tmp/k9s_Linux_x86_64.tar.gz && \
  ##################################################################
  ### install oh-my-posh
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /usr/local/bin/oh-my-posh \
  --url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v${OHMYPOSH_VERSION}/posh-linux-amd64" && \
  echo "${OHMYPOSH_SHA256SUM} /usr/local/bin/oh-my-posh" | sha256sum -c - && \
  chmod 0755 /usr/local/bin/oh-my-posh && \
  ##################################################################
  ### install switcher
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /usr/local/bin/switcher \
  --url "https://github.com/danielfoehrKn/kubeswitch/releases/download/${SWITCHER_VERSION}/switcher_linux_amd64" && \
  chmod 0755 /usr/local/bin/switcher && \
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
  rm -f /tmp/tilt.${TILT_VERSION}.linux.x86_64.tar.gz && \
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
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /tmp/powershell-${PS_VERSION}-1.rh.x86_64.rpm \
  --url "https://github.com/PowerShell/PowerShell/releases/download/v${PS_VERSION}/powershell-${PS_VERSION}-1.rh.x86_64.rpm" && \
  echo "${PS_SHA256SUM} /tmp/powershell-${PS_VERSION}-1.rh.x86_64.rpm" | sha256sum -c - && \
  rpm -Uvh /tmp/powershell-${PS_VERSION}-1.rh.x86_64.rpm && \
  rm -rf /tmp/powershell-${PS_VERSION}-1.rh.x86_64.rpm && \
  mkdir -p ${HOME}/.local/share/powershell/PSReadLine && \
  ##################################################################
  # Install Roboconfig
  ##################################################################
  pwsh -f /roboconfig/bootstrap.ps1 -RoboConfigDestination /roboconfig -ZipLocation "https://www.gsoutils.ford.com/powershell/api/v2/package/roboconfig/${ROBOCONFIG_VERSION}" && \
  ##################################################################
  # configure python
  ##################################################################
  update-alternatives --set python3 /usr/bin/python3.9 && \
  ln -s /usr/bin/python3.9 /usr/local/bin/python && \
  ln -s /usr/bin/pip3 /usr/local/bin/pip && \
  ##################################################################
  # Install rust
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /usr/local/bin/rustup-init \
  --url "https://static.rust-lang.org/rustup/archive/${RUSTUPINIT_VERSION}/x86_64-unknown-linux-gnu/rustup-init" && \
  echo "${RUSTUPINIT_SHA256SUM} /usr/local/bin/rustup-init" | sha256sum -c - && \
  chmod 0755 /usr/local/bin/rustup-init && \
  #################################################################
  # install nodejs
  #################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /tmp/node-v${NODEJS_18_VERSION}-linux-x64.tar.gz \
  https://nodejs.org/dist/v${NODEJS_18_VERSION}/node-v${NODEJS_18_VERSION}-linux-x64.tar.gz && \
  echo "${NODEJS_18_SHA256SUM} /tmp/node-v${NODEJS_18_VERSION}-linux-x64.tar.gz" | sha256sum -c - && \
  tar -xzf /tmp/node-v${NODEJS_18_VERSION}-linux-x64.tar.gz --one-top-level=/usr/local/nodejs/18 \
  --strip-components=1 --no-same-owner --no-wildcards-match-slash --anchored \
  --exclude */CHANGELOG.md --exclude */LICENSE --exclude */README.md --exclude share && \
  rm -rf /tmp/node-v${NODEJS_18_VERSION}-linux-x64.tar.gz && \
  ln -sf /usr/local/nodejs/18/bin/node /usr/local/bin/node  && \
  ln -sf /usr/local/nodejs/18/bin/npm /usr/local/bin/npm  && \
  node --version && \
  npm --version && \
  ##################################################################
  # Install go
  ##################################################################
  ## https://lakefs.io/managing-multiple-go-versions-with-go/
  ## https://linuxize.com/post/how-get-size-of-file-directory-linux/
  ## du -sh --max-depth=1 /home/user
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
  ##################################################################
  ## Golang tools
  ##################################################################
  ## https://github.com/istio/tools/blob/master/docker/build-tools/Dockerfile
  GOBIN=/usr/local/bin go install -v -ldflags="-s -w" golang.org/x/tools/gopls@latest && \
  GOBIN=/usr/local/bin go install -v -ldflags="-s -w" github.com/mdempsky/gocode@latest && \
  GOBIN=/usr/local/bin go install -v -ldflags="-s -w" github.com/uudashr/gopkgs/v2/cmd/gopkgs@latest && \
  GOBIN=/usr/local/bin go install -v -ldflags="-s -w" github.com/ramya-rao-a/go-outline@latest && \
  GOBIN=/usr/local/bin go install -v -ldflags="-s -w" github.com/acroca/go-symbols@latest && \
  GOBIN=/usr/local/bin go install -v -ldflags="-s -w" golang.org/x/tools/cmd/guru@latest && \
  GOBIN=/usr/local/bin go install -v -ldflags="-s -w" golang.org/x/tools/cmd/gorename@latest && \
  GOBIN=/usr/local/bin go install -v -ldflags="-s -w" github.com/cweill/gotests/...@latest && \
  GOBIN=/usr/local/bin go install -v -ldflags="-s -w" github.com/fatih/gomodifytags@latest && \
  GOBIN=/usr/local/bin go install -v -ldflags="-s -w" github.com/josharian/impl@latest && \
  GOBIN=/usr/local/bin go install -v -ldflags="-s -w" github.com/davidrjenni/reftools/cmd/fillstruct@latest && \
  GOBIN=/usr/local/bin go install -v -ldflags="-s -w" github.com/haya14busa/goplay/cmd/goplay@latest && \
  GOBIN=/usr/local/bin go install -v -ldflags="-s -w" github.com/godoctor/godoctor@latest && \
  GOBIN=/usr/local/bin go install -v -ldflags="-s -w" github.com/go-delve/delve/cmd/dlv@latest && \
  GOBIN=/usr/local/bin go install -v -ldflags="-s -w" github.com/stamblerre/gocode@latest && \
  GOBIN=/usr/local/bin go install -v -ldflags="-s -w" github.com/rogpeppe/godef@latest && \
  GOBIN=/usr/local/bin go install -v -ldflags="-s -w" golang.org/x/lint/golint@latest && \
  GOBIN=/usr/local/bin go install -v -ldflags="-s -w" honnef.co/go/tools/cmd/staticcheck@latest && \
  GOBIN=/usr/local/bin go install -v -ldflags="-s -w" github.com/golang-jwt/jwt/v4/cmd/jwt@latest && \
  GOBIN=/usr/local/bin go install -v -ldflags="-s -w" github.com/webdevops/go-crond@22.9.1 && \
  GOBIN=/usr/local/bin go install -v -ldflags="-s -w" github.com/mcuadros/ofelia@v0.3.6 && \
  ## https://jfrog.com/blog/why-goproxy-matters-and-which-to-pick/ (403 Forbidden)
  GOPROXY=direct GOBIN=/usr/local/bin go install -v -ldflags="-s -w" github.com/google/go-containerregistry/cmd/crane@v0.12.1 && \
  #GOBIN=/usr/local/bin go install -v -ldflags="-s -w" github.com/GoogleCloudPlatform/docker-credential-gcr@v2.1.6 && \
  #################################################################
  # install jdk 11 (adoptium aka eclipse-temurin)
  #################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /tmp/openjdk.tar.gz \
  --url "${JDK_11_URL}" && \
  echo "${JDK_11_SHA256SUM} /tmp/openjdk.tar.gz" | sha256sum -c - && \
  tar -xzf /tmp/openjdk.tar.gz --no-same-owner --one-top-level=/opt/java/openjdk/11 --strip-components 1 && \
  rm -f /tmp/openjdk.tar.gz && \
  #################################################################
  # install mandrel (adoptium aka eclipse-temurin)
  #################################################################
  ## https://github.com/graalvm/mandrel/releases/tag/mandrel-22.3.0.1-Final
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /tmp/mandrel-java17-linux-amd64-${MANDREL_VERSION}-Final.tar.gz \
  --url "https://github.com/graalvm/mandrel/releases/download/mandrel-${MANDREL_VERSION}-Final/mandrel-java17-linux-amd64-${MANDREL_VERSION}-Final.tar.gz" && \
  echo "${MANDREL_SHA256SUM} /tmp/mandrel-java17-linux-amd64-${MANDREL_VERSION}-Final.tar.gz" | sha256sum -c - && \
  tar -xzf /tmp/mandrel-java17-linux-amd64-${MANDREL_VERSION}-Final.tar.gz --no-same-owner --one-top-level=/opt/java/mandrel/22 --strip-components 1 && \
  rm -f /tmp/mandrel-java17-linux-amd64-${MANDREL_VERSION}-Final.tar.gz && \
  #################################################################
  # install maven
  #################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /tmp/apache-maven-${MAVEN_VERSION}-bin.tar.gz \
  --url "https://dlcdn.apache.org/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz" && \
  echo "${MAVEN_SHA512SUM} /tmp/apache-maven-${MAVEN_VERSION}-bin.tar.gz" | sha512sum -c - && \
  mkdir -p /opt/maven/ref && \
  tar -xzf /tmp/apache-maven-${MAVEN_VERSION}-bin.tar.gz --no-same-owner --one-top-level=/opt/maven --strip-components 1 && \
  rm -f /tmp/apache-maven-${MAVEN_VERSION}-bin.tar.gz && \
  ln -s /opt/maven/bin/mvn /usr/bin/mvn && \
  ##################################################################
  ### install gradle
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /tmp/gradle-${GRADLE_VERSION}-bin.zip \
  --url "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" && \
  echo "${GRADLE_SHA256SUM} /tmp/gradle-${GRADLE_VERSION}-bin.zip" | sha256sum -c - && \
  unzip /tmp/gradle-${GRADLE_VERSION}-bin.zip -d /opt/gradle/ && \
  mv /opt/gradle/gradle-${GRADLE_VERSION}/* /opt/gradle/ && \
  rm -rf /tmp/gradle-${GRADLE_VERSION}-bin.zip /opt/gradle/gradle-${GRADLE_VERSION} && \
  #################################################################
  # install fonts
  #################################################################
  mkdir -p ${HOME}/.local/share/fonts && \
  curl -Lfso "${HOME}/.local/share/fonts/Go Mono Nerd Font Complete.ttf" --url "https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Go-Mono/Regular/complete/Go%20Mono%20Nerd%20Font%20Complete.ttf?raw=true" && \
  curl -Lfso "${HOME}/.local/share/fonts/Go Mono Nerd Font Complete Mono.ttf" --url "https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Go-Mono/Regular/complete/Go%20Mono%20Nerd%20Font%20Complete%20Mono.ttf?raw=true" && \
  curl -Lfso "${HOME}/.local/share/fonts/Sauce Code Pro Nerd Font Complete.ttf" --url "https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/SourceCodePro/Regular/complete/Sauce%20Code%20Pro%20Nerd%20Font%20Complete.ttf?raw=true" && \
  curl -Lfso "${HOME}/.local/share/fonts/Sauce Code Pro Nerd Font Complete Mono.ttf" --url "https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/SourceCodePro/Regular/complete/Sauce%20Code%20Pro%20Nerd%20Font%20Complete%20Mono.ttf?raw=true" && \
  curl -Lfso "${HOME}/.local/share/fonts/Fira Code Regular Nerd Font Complete.ttf" --url "https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraCode/Regular/complete/Fira%20Code%20Regular%20Nerd%20Font%20Complete.ttf?raw=true" && \
  curl -Lfso "${HOME}/.local/share/fonts/Fira Code Regular Nerd Font Complete Mono.ttf" --url "https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraCode/Regular/complete/Fira%20Code%20Regular%20Nerd%20Font%20Complete%20Mono.ttf?raw=true" && \
  curl -Lfso "${HOME}/.local/share/fonts/Caskaydia Cove Nerd Font Complete Regular.otf" --url "https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/CascadiaCode/Regular/complete/Caskaydia%20Cove%20Nerd%20Font%20Complete%20Regular.otf?raw=true" && \
  curl -Lfso "${HOME}/.local/share/fonts/Caskaydia Cove Nerd Font Complete Mono Regular.otf" --url "https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/CascadiaCode/Regular/complete/Caskaydia%20Cove%20Nerd%20Font%20Complete%20Mono%20Regular.otf?raw=true" && \
  #################################################################
  # install fonts
  #################################################################
  fc-cache -fv && \
  # list available fonts
  fc-list && \
  #################################################################
  # install oh-my-zsh
  #################################################################
  git clone https://github.com/robbyrussell/oh-my-zsh.git /opt/oh-my-zsh && \
  #cp $HOME/.oh-my-zsh/templates/zshrc.zsh-template $HOME/.zshrc && \
  cp -f /.zshrc ${HOME}/.zshrc && \
  #cp /.zprofile ${HOME}/.zprofile && \
  rm -rf /opt/oh-my-zsh/.git && \
  # Install powerlevel10k theme
  rm -rf /opt/oh-my-zsh/custom/themes/powerlevel10k && \
  git clone --single-branch --depth 1 https://github.com/romkatv/powerlevel10k.git /opt/oh-my-zsh/custom/themes/powerlevel10k && \
  rm -rf /opt/oh-my-zsh/custom/themes/powerlevel10k/.git && \
  cp -f /.p10k.zsh ${HOME}/.p10k.zsh && \
  # Install syntax highlighting
  rm -rf /opt/oh-my-zsh/custom/plugins/zsh-syntax-highlighting && \
  git clone --single-branch --branch 'master' --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git /opt/oh-my-zsh/custom/plugins/zsh-syntax-highlighting && \
  rm -rf /opt/oh-my-zsh/custom/plugins/zsh-syntax-highlighting.git && \
  # Install zsh autosuggestions
  rm -rf /opt/oh-my-zsh/custom/plugins/zsh-autosuggestions && \
  git clone --single-branch --branch 'master' --depth 1 https://github.com/zsh-users/zsh-autosuggestions.git /opt/oh-my-zsh/custom/plugins/zsh-autosuggestions && \
  rm -rf /opt/oh-my-zsh/custom/plugins/zsh-autosuggestions.git && \
  # Install zsh completions
  rm -rf /opt/oh-my-zsh/custom/plugins/zsh-completions && \
  git clone --single-branch --branch 'master' --depth 1 https://github.com/zsh-users/zsh-completions.git /opt/oh-my-zsh/custom/plugins/zsh-completions && \
  rm -rf /opt/oh-my-zsh/custom/plugins/zsh-autosuggestions.git && \
  ## set permission
  chmod -R 0775 /opt/oh-my-zsh && \
  chown -R ${USER_UID}:0 /opt/oh-my-zsh && \
  #################################################################
  # ssh configs
  #################################################################
  # Copy the global git configuration to user config as global /etc/gitconfig
  # file may be overwritten by a mounted file at runtime
  cp /etc/gitconfig ${HOME}/.gitconfig && \
  chown -R ${USER_UID}:0 ${HOME} /etc/passwd /etc/group /home /entrypoint.sh /vscode-entrypoint.sh && \
  chmod -R 0775 ${HOME} /etc/passwd /etc/group /home /entrypoint.sh /vscode-entrypoint.sh && \
  rm -rf ${HOME}/.cache/ ${HOME}/go/ ${HOME}/.npm/_logs/ && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.*

USER 1001

WORKDIR /projects

ENTRYPOINT ["/entrypoint.sh"]

CMD ["tail", "-f", "/dev/null"]
