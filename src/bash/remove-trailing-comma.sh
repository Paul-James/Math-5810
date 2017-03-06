#!/usr/bin/env bash

for csv in ../../data/airline-raw/*
  do
    fname=$(basename ${csv})
    echo "processing $fname..."
    cat ${csv} | sed 's/,\s*$//' | tr -d '"' > ../../data/airline-cut/$fname
  done
