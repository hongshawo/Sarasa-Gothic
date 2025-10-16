#!/bin/bash

source afdko_env/bin/activate

cp -fv HC/config.01.nhe.json config.json && npm run build -- ttf && \
cp -fv HC/config.02.she.json config.json && npm run build -- ttf && \
cp -fv HC/config.03.nhl.json config.json && npm run build -- ttf && \
cp -fv HC/config.04.shl.json config.json && npm run build -- ttf && \
cp -fv HC/config.05.nhr.json config.json && npm run build -- ttf && \
cp -fv HC/config.06.shr.json config.json && npm run build -- ttf && \
cp -fv HC/config.07.nhs.json config.json && npm run build -- ttf && \
cp -fv HC/config.08.shs.json config.json && npm run build -- ttf && \
cp -fv HC/config.09.nhb.json config.json && npm run build -- ttf && \
cp -fv HC/config.10.shb.json config.json && npm run build -- ttf
