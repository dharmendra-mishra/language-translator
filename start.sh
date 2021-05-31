#!/bin/bash

VENV_DIR=./venv_python3
rm -rf $VENV_DIR
python3 -m venv $VENV_DIR

chmod 775 $VENV_DIR/bin/activate
source $VENV_DIR/bin/activate
pip3 install -r requirements.txt

python3 api.py