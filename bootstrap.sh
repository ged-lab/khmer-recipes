#!/bin/bash

# exit on errors
set -e

# Ensure we're in the right dir.
cd "$(dirname $0)"

# checkout git submodules in case you didn't use clone --recursive
test -d literate-resting || git clone --recursive https://github.com/ged-lab/literate-resting.git
test -d nullgraph || git clone --recursive https://github.com/ged-lab/nullgraph.git
test -d khmer || git clone --recursive https://github.com/ged-lab/khmer.git


# Remove, recreate and activate virtualenv we'll use
rm -rf khmerenv
virtualenv khmerenv
source khmerenv/bin/activate

# Install khmer from local submodule
cd khmer
python setup.py install
cd ..

# install dependencies of khmer-recipies itself
pip install matplotlib
pip install docutils
