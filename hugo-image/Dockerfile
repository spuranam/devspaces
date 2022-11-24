FROM registry.access.redhat.com/ubi9/ubi-minimal:9.1.0-1656

ARG \
  HUGO_VERSION=0.106.0 \
  HUGO_SHA256SUM='b283d4f7947ec2bb8522b7cd8c5588126185dc65abfd3c82d44cdeb3d5f7f07c' \
  GO_VERSION=1.19.3 \
  GO_SHA256SUM='74b9640724fd4e6bb0ed2a1bc44ae813a03f1e72a4c76253e2d5c015494430ba' \
  NODEJS_VERSION='18.12.1' \
  NODEJS_SHA256SUM='a8fcacb8033504e6d704bdee821f7005ee3774db25c799bcf2a13b5bda7de172' \
  VALE_VERSION=2.21.1 \
  VALE_SHA256SUM='af4fcd21718f4d2ccb6903cb521d04b630b9d89475ff7ff924fe7a98cacacb7c'

ENV \
  LANG='en_US.UTF-8' \
  LANGUAGE='en_US:en' \
  LC_ALL='en_US.UTF-8' \
  TZ=UTC \
  HOME=/home/default \
  USER_NAME=default \
  USER_UID=1001 \
  PYTHON_VERSION=3.9 \
  PYTHONUNBUFFERED=1 \
  PYTHONIOENCODING=UTF-8 \
  LC_ALL=en_US.UTF-8 \
  LANG=en_US.UTF-8 \
  #PIP_NO_CACHE_DIR=off \
  # Instruct pip(env) not to keep a cache of installed packages,
  # to install into the global site-packages and
  # to clear the pipenv cache as well
  PIP_NO_CACHE_DIR=1 \
  PIPENV_SYSTEM=1 \
  PIPENV_CLEAR=1 \
  #PIPENV_VENV_IN_PROJECT=1 \
  PIPENV_VERBOSITY=-1 \
  SUMMARY="Hugo fast and flexible static site generator" \
  DESCRIPTION="Hugo fast and flexible static site generator" \
  ##NPM_CONFIG_PREFIX=/home/default/.npm-global \
  #NODE_PATH=".:/usr/lib/node_modules" \
  #NODE_PATH=".:${HOME}/.npm-global/lib/node_modules" \
  HUGO_SECURITY_EXEC_OSENV=".*" \
  NPM_CONFIG_PREFIX=/home/default/.npm-global \
  NODE_PATH=".:/home/default/.npm-global/lib/node_modules" \
  PATH=/home/default/.npm-global/bin/:/home/default/src/bin:/home/default/bin:/home/default/.local/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:$PATH

LABEL \
  summary="$SUMMARY" \
  description="$DESCRIPTION" \
  io.k8s.description="$DESCRIPTION" \
  io.k8s.display-name="hugo $HUGO_VERSION" \
  org.label-schema.version="$HUGO_VERSION" \
  org.label-schema.name="hugo"

RUN set -ex && \
  echo "LANG=en_US.utf-8" >> /etc/profile.d/locale.sh && \
  echo "LC_ALL=en_US.utf-8" >> /etc/profile.d/locale.sh && \
  echo "export LANG LC_ALL" >> /etc/profile.d/locale.sh && \
  ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime && \
  #################################################################
  # Define package dependecies
  #
  # BUILDTIME_PKGS:
  #   list of packges that are only required during container build
  #   and are typicallly installed as part container build process
  #
  # RUNTIME_PKGS:
  #   list of packages that must be present in the final container
  #   image.
  #  nss_wrapper gettext openssh-clients nano
  # scl-utils libpq-devel libxml2-devel libxslt-devel mariadb-connector-c-devel npm sqlite-devel gd-devel gdb groff-base libcurl-devel lsof openssl-devel
  #################################################################
  ## https://fedoramagazine.org/building-smaller-container-images/ (modules)
  ## https://github.com/rhjhunt/vale/blob/master/Dockerfile
  ## https://github.com/rohankumardubey/stackrox/blob/master/operator/Dockerfile
  ## https://github.com/redhat-developer/web-terminal-tooling/blob/main/build/template.Dockerfile#L50
  ## https://github.com/redhat-developer/devspaces-images/blob/crw-2-rhel-8/codeready-workspaces-udi/Dockerfile
  ## https://github.com/redhat-developer/devspaces-theia/blob/devspaces-3-rhel-8/dockerfiles/theia-dev/rhel.Dockerfile
  ## https://github.com/stolostron/kui-web-terminal
  PKGMGR='microdnf' && \
  BUILDTIME_PKGS="" && \
  RUNTIME_PKGS="findutils coreutils-single glibc-minimal-langpack ca-certificates \
  glibc-locale-source glibc-langpack-en gettext rsync tar unzip xz gzip bzip2 \
  make cmake autoconf automake gcc gcc-c++ glibc-devel zlib-devel libstdc++ libstdc++-devel \
  git-core wget which patch procps-ng shadow-utils redhat-rpm-config vim-minimal \
  python3-pip python3-setuptools python3 nss_wrapper" && \
  #################################################################
  # Install packages
  #################################################################
  ${PKGMGR} \
  --disablerepo="*" \
  --enablerepo="ubi-9-appstream-rpms" \
  --enablerepo="ubi-9-baseos-rpms" \
  --enablerepo="ubi-9-codeready-builder-rpms" \
  #--enablerepo="rhel-9-for-x86_64-baseos-rpms" \
  #--enablerepo="rhel-9-for-x86_64-appstream-rpms" \
  #--enablerepo="codeready-builder-for-rhel-9-x86_64-rpms" \
  ##--enablerepo="rhel-9-for-x86_64-resilientstorage-rpms" \
  install -y --nodocs --setopt=tsflags=nodocs ${BUILDTIME_PKGS} ${RUNTIME_PKGS} && \
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
  # entrypoint script
  #################################################################
  { \
  echo '#!/bin/bash'; \
  echo '# Set current user in /etc/passwd'; \
  echo 'USER_ID=$(id -u)'; \
  echo 'GROUP_ID=$(id -g)'; \
  echo 'USER=${USER_NAME:-default}'; \
  echo 'if [ "$USER_ID" != "0" ] && [ "$USER_ID" != "1001" ]; then'; \
  echo '    if [ -w /etc/passwd ]; then'; \
  echo '        grep -v "^${USER}:" /etc/passwd >/tmp/passwd'; \
  echo '        echo "${USER}:x:$(id -u):0:${USER} user:${HOME}:/sbin/nologin" >>/tmp/passwd'; \
  echo '        cat /tmp/passwd >/etc/passwd'; \
  echo '        rm /tmp/passwd'; \
  echo '    fi'; \
  echo 'fi'; \
  echo 'exec "$@"'; \
  } > /usr/bin/entrypoint && \
  #################################################################
  # Add user and group first to make sure their IDs get assigned consistently
  ################################################################
  mkdir -p ${HOME} && \
  groupadd -r ${USER_NAME} -g ${USER_UID} && \
  useradd -l -m -u ${USER_UID} -g 0 -G wheel,root -d ${HOME} --shell /bin/bash  -c "${USER_NAME} User" ${USER_NAME} && \
  #echo "${USER_NAME}:x:${USER_UID}:0:${USER_NAME} User:${HOME}:/sbin/nologin" >> /etc/passwd && \
  #echo "${USER_NAME}:x:${USER_UID}:" >> /etc/group && \
  #echo ${USER_NAME}':!!:18770::::::' >> /etc/shadow && \
  #################################################################
  # user name recognition at runtime w/ an arbitrary uid
  #################################################################
  chown -R ${USER_UID}:0 ${HOME} && \
  chgrp -R 0 ${HOME} && \
  chmod g=u ${HOME} && \
  chmod 0775 /usr/bin/entrypoint && \
  chgrp 0 /usr/bin/entrypoint && \
  chmod 0664 /etc/passwd /etc/group && \
  chmod g=u /etc/passwd /etc/group && \
  ls -la /etc/passwd && ls -la /etc/group && \
  ls -la /usr/bin/entrypoint && \
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
  ##################################################################
  ### install nodejs
  ### https://nodejs.org/en/download/
  ##################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /tmp/node-v${NODEJS_VERSION}-linux-x64.tar.gz \
  https://nodejs.org/dist/v${NODEJS_VERSION}/node-v${NODEJS_VERSION}-linux-x64.tar.gz && \
  echo "${NODEJS_SHA256SUM} /tmp/node-v${NODEJS_VERSION}-linux-x64.tar.gz" | sha256sum -c - && \
  tar -xzf /tmp/node-v${NODEJS_VERSION}-linux-x64.tar.gz -C /usr/local \
  --strip-components=1 --no-same-owner --no-wildcards-match-slash --anchored \
  --exclude */CHANGELOG.md --exclude */LICENSE --exclude */README.md --exclude share && \
  rm -rf /tmp/node-v${NODEJS_VERSION}-linux-x64.tar.gz && \
  ln -s /usr/local/bin/node /usr/local/bin/nodejs && \
  node --version && \
  npm --version && \
  #################################################################
  # Install nodejs
  #################################################################
  #ln -s /usr/lib/node_modules/nodemon/bin/nodemon.js /usr/bin/nodemon && \
  #mkdir -p ${HOME}/.npm-global/{lib,bin} && \
  ln -s /usr/bin/node /usr/bin/nodejs && \
  #rpm --erase --nodeps nodejs-docs || true && \
  # npm config set proxy http://internet.ford.com:83 && \
  # npm config set http-proxy http://internet.ford.com:83 && \
  # npm config set https-proxy http://internet.ford.com:83 && \
  # npm config set noproxy localhost,127.0.0.1,.ford.com,.local,.internal,.googleapis.com && \
  ## http://npm.github.io/installation-setup-docs/installing/a-note-on-permissions.html
  ## When installing use -g option to install globally (Use npm root -g to check where)
  ## Global libraries (npm list -g)
  ## Configure npm and yarn to use home folder for global dependencies
  npm config delete prefix && \
  npm config set prefix "${HOME}/.npm-global" && \
  npm root -g && \
  echo "--global-folder \"${HOME}/.yarn-global\"" > ${HOME}/.yarnrc && \
  echo "$PATH" && \
  #npm install -g -D --save autoprefixer postcss postcss-cli && \
  #npm install -g npm && \
  #npm install -g npm@8.7.0 autoprefixer@10.4.4 postcss@8.4.12 postcss-cli@9.1.0 yarn@1.22.18 @babel/cli @babel/core && \
  npm install -g autoprefixer@10.4.12 postcss@8.4.18 postcss-cli@10.0.0 yarn@1.22.19 markdownlint@0.26.2 && \
  npm cache clear --force && \
  yarn config set network-timeout 600000 -g && \
  node --version && \
  yarn --version && \
  npm --version && \
  postcss --version && \
  autoprefixer --version && \
  npm config get prefix && \
  npm root -g && \
  for f in "/home/default/.npm-global"; do chgrp -R 0 ${f}; chmod -R g+rwX ${f}; done && \
  ##################################################################
  ### install nss
  ##################################################################
  mkdir -p ${APP_ROOT}/.pki/nssdb && \
  chown -R 1001:0 ${APP_ROOT}/.pki && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  ##################################################################
  ### install go
  ##################################################################
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
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
  #################################################################
  ## install hugo
  #################################################################
  curl --progress-bar --location --fail --show-error \
  --connect-timeout "${CURL_CONNECTION_TIMEOUT:-20}" \
  --retry "${CURL_RETRY:-5}" \
  --retry-delay "${CURL_RETRY_DELAY:-0}" \
  --retry-max-time "${CURL_RETRY_MAX_TIME:-60}" \
  --output /tmp/hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz \
  --url "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz" && \
  echo "${HUGO_SHA256SUM} /tmp/hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz" | sha256sum -c - && \
  tar xf /tmp/hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz --no-same-owner -C /usr/local/bin hugo && \
  chmod 0755 /usr/local/bin/hugo && \
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.* && \
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
  rm -rf /{root,tmp,var/cache/{ldconfig,yum}}/* && \
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.*

## delete all files and directories under a dir including "hidden" files and directories
##find /root -mindepth 1 -maxdepth 1 -exec rm -rf {} \;
#find /root -mindepth 1 -maxdepth 1 | xargs rm -rf && \
#find /tmp -mindepth 1 -maxdepth 1 | xargs rm -rf && \
#find /var/cache -mindepth 1 -maxdepth 1 | xargs rm -rf

WORKDIR ${HOME}

EXPOSE 1313

USER 1001

ENTRYPOINT ["/usr/bin/entrypoint"]

CMD ["/usr/bin/bash"]
