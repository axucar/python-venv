#!/usr/bin/env bash

# Create a virtual environment called .venv (here `python3` will refer to the Python3 version installed on your PC
VENV_PATH="./.myvenv"
rm -rf ${VENV_PATH}

python3 -m venv ${VENV_PATH} 
source ./.myvenv/bin/activate 
python3 -m pip install --upgrade pip 
python3 -m pip install --quiet -r requirements.txt

echo "Done!"


