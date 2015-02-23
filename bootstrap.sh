#!/bin/bash

# exit on errors
set -e

# Ensure we're in the right dir.
cd "$(dirname $0)"

test -d literate-resting || git clone --recursive https://github.com/ged-lab/literate-resting.git
test -d nullgraph || git clone --recursive https://github.com/ged-lab/nullgraph.git

# Remove, recreate and activate virtualenv we'll use
rm -rf khmerenv
virtualenv khmerenv
source khmerenv/bin/activate

# install dependencies of khmer-recipies itself
pip install matplotlib
pip install docutils

# Install khmer
pip install khmer
