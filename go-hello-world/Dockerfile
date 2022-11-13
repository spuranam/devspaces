FROM registry.ford.com/pipelines/go:1.19.3 As builder
COPY . ${HOME}/src/
RUN set -ex && \
  cd ${HOME}/src/ && \
  GO111MODULE=on CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -v -buildvcs=false -o /tmp/hello-world main.go

FROM registry.access.redhat.com/ubi9/ubi-minimal:9.0.0-1700

ARG \
  VERSION=1.0.0

ENV \
  LANG='en_US.UTF-8' \
  LANGUAGE='en_US:en' \
  LC_ALL='en_US.UTF-8' \
  TZ=UTC \
  HOME=/home/default \
  USER_NAME=default \
  USER_UID=1001 \
  SUMMARY="hello-world" \
  DESCRIPTION="hello-world"

LABEL \
  summary="$SUMMARY" \
  description="$DESCRIPTION" \
  io.k8s.description="$DESCRIPTION" \
  io.k8s.display-name="mysample/hello-world" \
  org.label-schema.version="$VERSION" \
  org.label-schema.name="mysample/hello-world"

COPY --from=builder /tmp/hello-world /home/default/

RUN set -ex && \
  #################################################################
  # Define package dependecies
  #  nss_wrapper gettext openssh-clients nano shadow-utils
  #  coreutils-single skopeo findutils rsync vim-minimal
  #################################################################
  PKGMGR='microdnf' && \
  BUILDTIME_PKGS="" && \
  RUNTIME_PKGS="shadow-utils glibc-minimal-langpack glibc-langpack-en \
  ca-certificates" && \
  #################################################################
  # Install packages --setopt=cachedir=/var/cache/dnf/f32
  #################################################################
  ${PKGMGR} \
  --disablerepo="*" \
  --enablerepo="ubi-9-appstream-rpms" \
  --enablerepo="ubi-9-baseos-rpms" \
  --enablerepo="ubi-9-codeready-builder-rpms" \
  --nodocs -y --setopt=tsflags=nodocs --setopt=install_weak_deps=0 \
  --disableplugin=subscription-manager install \
  ${BUILDTIME_PKGS} ${RUNTIME_PKGS} && \
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
  echo '        echo "${USER}:x:$(id -u):0:Container user:${HOME}:/sbin/nologin" >>/tmp/passwd'; \
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
  rm -rf /var/cache/* /var/log/dnf* /var/log/yum.*

WORKDIR ${HOME}

EXPOSE 8080

USER 1001

ENTRYPOINT ["/usr/bin/entrypoint"]

CMD ["/home/default/hello-world"]
