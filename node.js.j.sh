#!/bin/bash

source afdko_env/bin/activate

cp -fv J/config.01.nje.json config.json && npm run build -- ttf && \
cp -fv J/config.02.sje.json config.json && npm run build -- ttf && \
cp -fv J/config.03.njl.json config.json && npm run build -- ttf && \
cp -fv J/config.04.sjl.json config.json && npm run build -- ttf && \
cp -fv J/config.05.njr.json config.json && npm run build -- ttf && \
cp -fv J/config.06.sjr.json config.json && npm run build -- ttf && \
cp -fv J/config.07.njs.json config.json && npm run build -- ttf && \
cp -fv J/config.08.sjs.json config.json && npm run build -- ttf && \
cp -fv J/config.09.njb.json config.json && npm run build -- ttf && \
cp -fv J/config.10.sjb.json config.json && npm run build -- ttf
