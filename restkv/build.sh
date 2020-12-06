#!/bin/sh

set -ex

mkdir -p /kv
cd /kv

apk add git
git clone https://github.com/ahxxm/restkv
cd restkv
git checkout 1a816979faa42dc1f96fb04f025e29b4203cbbf9
cargo build --release --target x86_64-unknown-linux-musl

cp target/x86_64-unknown-linux-musl/release/restkv /kv/
