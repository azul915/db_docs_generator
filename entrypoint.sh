#!/bin/bash

if [ -e output/ ]; then
    rm -rf output/*
fi

docker-compose down -v

docker-compose up