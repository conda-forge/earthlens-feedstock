#!/bin/bash
set -ex

"$PREFIX/bin/python" -m pip install . -vv --no-deps --no-build-isolation
