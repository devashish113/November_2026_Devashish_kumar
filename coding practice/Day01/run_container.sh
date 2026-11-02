#!/usr/bin/env bash
set -e

echo "=== PathNex Day 01 Container Test ==="
docker --version
docker run --rm ubuntu echo "Hello Pathnex"

echo "=== Building Dockerfile ==="
docker build -t pathnex-hello:v1 .
docker run --rm pathnex-hello:v1
