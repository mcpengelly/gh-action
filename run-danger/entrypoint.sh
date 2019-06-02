#!/bin/sh -l

cd /
npm install -g danger
# npm ci

danger ci
# node script.js $*
