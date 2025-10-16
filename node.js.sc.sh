#!/bin/bash

source afdko_env/bin/activate

cp -fv SC/config.01.nse.json config.json && npm run build -- ttf && \
cp -fv SC/config.02.sse.json config.json && npm run build -- ttf && \
cp -fv SC/config.03.nsl.json config.json && npm run build -- ttf && \
cp -fv SC/config.04.ssl.json config.json && npm run build -- ttf && \
cp -fv SC/config.05.nsr.json config.json && npm run build -- ttf && \
cp -fv SC/config.06.ssr.json config.json && npm run build -- ttf && \
cp -fv SC/config.07.nss.json config.json && npm run build -- ttf && \
cp -fv SC/config.08.sss.json config.json && npm run build -- ttf && \
cp -fv SC/config.09.nsb.json config.json && npm run build -- ttf && \
cp -fv SC/config.10.ssb.json config.json && npm run build -- ttf
