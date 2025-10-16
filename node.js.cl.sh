#!/bin/bash

source afdko_env/bin/activate

cp -fv CL/config.01.nce.json config.json && npm run build -- ttf && \
cp -fv CL/config.02.sce.json config.json && npm run build -- ttf && \
cp -fv CL/config.03.ncl.json config.json && npm run build -- ttf && \
cp -fv CL/config.04.scl.json config.json && npm run build -- ttf && \
cp -fv CL/config.05.ncr.json config.json && npm run build -- ttf && \
cp -fv CL/config.06.scr.json config.json && npm run build -- ttf && \
cp -fv CL/config.07.ncs.json config.json && npm run build -- ttf && \
cp -fv CL/config.08.scs.json config.json && npm run build -- ttf && \
cp -fv CL/config.09.ncb.json config.json && npm run build -- ttf && \
cp -fv CL/config.10.scb.json config.json && npm run build -- ttf
