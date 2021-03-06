#!/usr/bin/env bash
#
# Executes nosetests.
#
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"/../
cd "${DIR}" || exit 1

NOSE_OPTS+="--with-coverage "
NOSE_OPTS+="--cover-package=lazarus "
NOSE_OPTS+="--cover-erase "
NOSE_OPTS+="--nocapture "
NOSE_OPTS+="--with-doctest "
NOSE_OPTS+="--doctest-options=+ELLIPSIS "

PYTHONPATH=$(pwd)/tests nosetests $NOSE_OPTS -v
