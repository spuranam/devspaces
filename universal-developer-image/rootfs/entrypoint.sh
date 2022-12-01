#!/bin/bash

## Ensure $HOME exists when starting
if [ ! -d "${HOME}" ]; then
  mkdir -p "${HOME}"
fi

export USER_ID=$(id -u)
export GROUP_ID=$(id -g)

if ! grep -Fq "${USER_ID}" /etc/passwd; then
  # current user is an arbitrary user (its uid is not in the container /etc/passwd)

  if [ -w /etc/passwd ]; then
    grep -v "^${USER}:" /etc/passwd >/tmp/passwd
    echo "${USER}:x:${USER_ID}:0:${USER} user:${HOME}:/bin/zsh" >>/tmp/passwd
    cat /tmp/passwd >/etc/passwd
    rm -f /tmp/passwd
  fi

  if [ -w /etc/group ]; then
    grep -v "^${USER}:" /etc/group >/tmp/group
    echo "${USER}:x:${GROUP_ID}:" >>/tmp/group
    cat /tmp/group >/etc/group
    rm -f /tmp/group
  fi

  #cat ${HOME}/passwd.template |
  #  sed "s/\${USER_ID}/${USER_ID}/g" |
  #  sed "s/\${GROUP_ID}/${GROUP_ID}/g" |
  #  sed "s/\${HOME}/\/home\/user/g" >/etc/passwd

  #cat ${HOME}/group.template |
  #  sed "s/\${USER_ID}/${USER_ID}/g" |
  #  sed "s/\${GROUP_ID}/${GROUP_ID}/g" |
  #  sed "s/\${HOME}/\/home\/user/g" >/etc/group
fi

## Grant access to projects volume in case of non root user with sudo rights
if [ "$(id -u)" -ne 0 ] && command -v sudo >/dev/null 2>&1 && sudo -n true >/dev/null 2>&1; then
  sudo chown "$(id -u):$(id -g)" /projects
fi

#if [ -f "${HOME}"/.venv/bin/activate ]; then
#  source "${HOME}"/.venv/bin/activate
#fi

## Setup $PS1 for a consistent and reasonable prompt
if [ -w "${HOME}" ] && [ ! -f "${HOME}"/.bashrc ]; then
  echo "PS1='[\u@\h \W]\$ '" >"${HOME}"/.bashrc
fi

#############################################################################
# use java 8 if USE_JAVA8 is set to 'true',
# use java 17 if USE_JAVA17 is set to 'true',
# by default it is java 11
#############################################################################
if [ "${USE_JAVA8}" == "true" ] && [ ! -z "${JAVA_HOME_8}" ]; then
  sdk default java ${JAVA_8_VERSION}-tem
elif [ "${USE_JAVA17}" == "true" ] && [ ! -z "${JAVA_HOME_17}" ]; then
  sdk default java ${JAVA_17_VERSION}-tem
else
  sdk default java ${JAVA_11_VERSION}-tem
fi

if [[ ! -z "${PLUGIN_REMOTE_ENDPOINT_EXECUTABLE}" ]]; then
  ${PLUGIN_REMOTE_ENDPOINT_EXECUTABLE}
fi

if [[ -d /projects ]]; then
  mkdir -p /projects/.ssh
  chmod -R 0775 /projects/.ssh
  chown -R ${USER_ID}:${GROUP_ID}
  ln -sf /projects/.ssh ${HOME}/.ssh
fi

## execute all custom scripts projected via configMap
#find /projects/custom-scripts -name '*.sh' -type f -maxdepth 1 -print0 | xargs -r0 -n1 bash -c "$@"
find /projects/custom-scripts -name '*.sh' -type f -print0 | parallel -r0 -n 1 -j 4

exec "$@"
