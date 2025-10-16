#!/bin/bash

source afdko_env/bin/activate

cp -fv K/config.01.nke.json config.json && npm run build -- ttf && \
cp -fv K/config.02.ske.json config.json && npm run build -- ttf && \
cp -fv K/config.03.nkl.json config.json && npm run build -- ttf && \
cp -fv K/config.04.skl.json config.json && npm run build -- ttf && \
cp -fv K/config.05.nkr.json config.json && npm run build -- ttf && \
cp -fv K/config.06.skr.json config.json && npm run build -- ttf && \
cp -fv K/config.07.nks.json config.json && npm run build -- ttf && \
cp -fv K/config.08.sks.json config.json && npm run build -- ttf && \
cp -fv K/config.09.nkb.json config.json && npm run build -- ttf && \
cp -fv K/config.10.skb.json config.json && npm run build -- ttf
