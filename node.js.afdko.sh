#!/bin/bash

if ! node -v | grep -i '^v[23][0-9]\.[0-9]\+\.[0-9]\+'; then
	echo 'Node.js error.'
	exit
fi
if ! ttfautohint -V | grep -i '^ttfautohint [1-9]\.'; then
	echo 'ttfautohint error.'
	exit
fi

python -m venv afdko_env
source afdko_env/bin/activate
python -m pip install --upgrade pip
python -m pip install afdko
npm install
