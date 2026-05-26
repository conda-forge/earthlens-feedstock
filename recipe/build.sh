#!/bin/bash
set -euxo pipefail

$PYTHON -m pip install . -vv --no-deps --no-build-isolation
