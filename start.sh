#!/bin/bash

VENV_DIR=./venv_python3
echo "Removing any existing python virtual environment with the name: " $VENV_DIR
rm -rf $VENV_DIR

echo "Going to create python virtual environment"
# For MAC/Linux machine
#python -m venv $VENV_DIR
#chmod 775 $VENV_DIR/bin/activate
#source $VENV_DIR/bin/activate

# For windows machine
python -m venv $VENV_DIR
chmod 775 $VENV_DIR/Scripts/activate
source $VENV_DIR/Scripts/activate

echo "Python virtual environment successfully created!!!"
echo "Python version: "

python --version
echo "Pip version: "
pip --version

echo "Install dependencies..."
pip install -r requirements.txt

python api.py