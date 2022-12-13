#!/bin/bash

# Ensure $HOME exists when starting
if [ ! -d "${HOME}" ]; then
  mkdir -p "${HOME}"
fi

export USER_ID=$(id -u)
export GROUP_ID=$(id -g)

# Boilerplate code for arbitrary user support
if ! whoami &>/dev/null; then
  if [ -w /etc/passwd ]; then
    grep -v "^${USER_NAME:-user}:" /etc/passwd >/tmp/passwd
    echo "${USER_NAME:-user}:x:${USER_ID}:0:${USER_NAME:-user} user:${HOME}:/bin/zsh" >>/tmp/passwd
    grep -v "^${USER_NAME:-user}:" /etc/group >/tmp/group
    echo "${USER_NAME:-user}:x:${GROUP_ID}:" >>/tmp/group
    cat /tmp/passwd >/etc/passwd
    cat /tmp/group >/etc/group
    rm -f /tmp/group /tmp/passwd
  fi
fi

## Grant access to projects volume in case of non root user with sudo rights
if [ "$(id -u)" -ne 0 ] && command -v sudo >/dev/null 2>&1 && sudo -n true >/dev/null 2>&1; then
  sudo chown "$(id -u):$(id -g)" /projects
fi

if [ -f "${HOME}"/.venv/bin/activate ]; then
  source "${HOME}"/.venv/bin/activate
fi

if [[ ! -z "${PLUGIN_REMOTE_ENDPOINT_EXECUTABLE}" ]]; then
  ${PLUGIN_REMOTE_ENDPOINT_EXECUTABLE}
fi

if [[ -f /checode/entrypoint-volume.sh ]] && [[ -f /vscode-entrypoint.sh ]]; then
  export HOME=/checode/home/user

  echo "setup vscode machine settings"
  if [[ -f /settings.json ]]; then
    mkdir -p /checode/remote/data/Machine
    cp -f /settings.json /checode/remote/data/Machine/settings.json
  fi

  echo "rsync /home/user/ to ${HOME}/"
  if [[ ! -f ${HOME}/run-rsync ]]; then
    mkdir -p ${HOME}
    rsync -avrop --exclude 'init' /home/user/ ${HOME}/
    touch ${HOME}/run-rsync
  fi

  echo "switch home directory in /etc/passwd file"
  #usermod -d /checode/home/user user
  if [ -w /etc/passwd ]; then
    grep -v "^${USER_NAME:-user}:" /etc/passwd >/tmp/passwd
    echo "${USER_NAME:-user}:x:${USER_ID}:0:${USER_NAME:-user} user:${HOME}:/bin/zsh" >>/tmp/passwd
    grep -v "^${USER_NAME:-user}:" /etc/group >/tmp/group
    echo "${USER_NAME:-user}:x:${GROUP_ID}:" >>/tmp/group
    cat /tmp/passwd >/etc/passwd
    cat /tmp/group >/etc/group
    rm -f /tmp/group /tmp/passwd
  fi

  echo "Patch the default checode startup script"
  cp -f /checode/entrypoint-volume.sh /checode/entrypoint-volume-old.sh
  cp -f /vscode-entrypoint.sh /checode/entrypoint-volume.sh
  chmod 0775 /checode/entrypoint-volume.sh
  chown ${USER_ID}:${GROUP_ID} /checode/entrypoint-volume.sh

  echo "Start checode entrypoint"
  /checode/entrypoint-volume.sh
fi

exec "$@"
