#!/bin/bash

# exit on errors
set -xe

# Ensure we're in the right dir.
cd "$(dirname $0)"

test -d literate-resting || git clone --recursive https://github.com/ged-lab/literate-resting.git
test -d nullgraph || git clone --recursive https://github.com/ged-lab/nullgraph.git

# create and activate virtualenv we'll use
test -d khmerenv || virtualenv khmerenv
source khmerenv/bin/activate

pip install -U khmer matplotlib docutils
