#!/usr/bin/env bash

# Create a virtual environment called .venv (here `python3` will refer to the Python3 version installed on your PC
# python3 -m venv .venv
# source ./.venv/bin/activate
# python3 -m pip install [package_name]

set -e

# Constants
VENV_PATH="./.venv"
PYTHON_VERSION="python3.9"

# Setup virtual env
rm -rf ${VENV_PATH}
virtualenv --quiet ${VENV_PATH} --python=${PYTHON_VERSION}
source ${VENV_PATH}/bin/activate
echo "Created virtual environment for ${PYTHON_VERSION}"

# Install dependencies
pip install --quiet numpy 
echo "Base dependencies installed"
echo "Done!"


