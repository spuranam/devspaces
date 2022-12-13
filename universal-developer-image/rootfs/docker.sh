#!/bin/bash

set -e

CMD=$1
if [[ $1 = build ]]; then
    CMD="bud"
fi
shift
buildah $CMD $@
