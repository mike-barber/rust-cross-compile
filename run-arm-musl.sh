#!/bin/bash

# requires target installed, linker and qemu
#
#   rustup target install aarch64-unknown-linux-musl
#   sudo apt install binutils-aarch64-linux-gnu
#   sudo apt install qemu-user-binfmt

CARGO_TARGET_AARCH64_UNKNOWN_LINUX_MUSL_LINKER=aarch64-linux-gnu-ld cargo test --target=aarch64-unknown-linux-musl
CARGO_TARGET_AARCH64_UNKNOWN_LINUX_MUSL_LINKER=aarch64-linux-gnu-ld cargo run --target=aarch64-unknown-linux-musl
