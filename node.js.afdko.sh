#!/bin/bash

python -m venv afdko_env
source afdko_env/bin/activate
python -m pip install --upgrade pip
# python -m pip install https://github.com/adobe-type-tools/afdko/releases/download/4.0.2/afdko-4.0.2-py3-none-manylinux_2_28_x86_64.whl
python -m pip install afdko
npm install
