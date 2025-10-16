#!/bin/bash

source afdko_env/bin/activate

cp -fv TC/config.01.nte.json config.json && npm run build -- ttf && \
cp -fv TC/config.02.ste.json config.json && npm run build -- ttf && \
cp -fv TC/config.03.ntl.json config.json && npm run build -- ttf && \
cp -fv TC/config.04.stl.json config.json && npm run build -- ttf && \
cp -fv TC/config.05.ntr.json config.json && npm run build -- ttf && \
cp -fv TC/config.06.str.json config.json && npm run build -- ttf && \
cp -fv TC/config.07.nts.json config.json && npm run build -- ttf && \
cp -fv TC/config.08.sts.json config.json && npm run build -- ttf && \
cp -fv TC/config.09.ntb.json config.json && npm run build -- ttf && \
cp -fv TC/config.10.stb.json config.json && npm run build -- ttf
