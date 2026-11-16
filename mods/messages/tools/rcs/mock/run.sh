#!/bin/sh
# Run the mock RCS network from anywhere: tools/rcs/mock/run.sh [flags]  (see --help)
cd "$(dirname "$0")/../../.." || exit 1
exec python3 -m tools.rcs.mock "$@"
