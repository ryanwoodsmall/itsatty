#!/bin/bash

#
# https://unix.stackexchange.com/questions/249723/how-to-trick-a-command-into-thinking-its-output-is-going-to-a-terminal
#

set -eu
set -o pipefail

hash socat >/dev/null 2>&1 || {
  echo no socat
  exit 1
}

eval "socat SYSTEM:'${@}',pty STDIO"
