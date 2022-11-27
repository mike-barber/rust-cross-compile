# Basic Rust cross-compilation and run with Qemu

## On host system

This requires:
- the right Rust target installed
- suitable linker
- qemu to run the executable

On Ubuntu:

```
rustup target install aarch64-unknown-linux-musl
sudo apt install binutils-aarch64-linux-gnu qemu-user-binfmt
```

Then to test and run on `aarch64`, 

```
CARGO_TARGET_AARCH64_UNKNOWN_LINUX_MUSL_LINKER=aarch64-linux-gnu-ld cargo test --target=aarch64-unknown-linux-musl
CARGO_TARGET_AARCH64_UNKNOWN_LINUX_MUSL_LINKER=aarch64-linux-gnu-ld cargo run --target=aarch64-unknown-linux-musl
```

## Using Docker

There's also the option of using the [Cargo `cross` tool](https://kerkour.com/rust-cross-compilation) that uses Docker images and may be easier in some circumstances.

This will build and run an `aarch64 gnu` target:

```
cross test --target aarch64-unknown-linux-gnu
cross run --target aarch64-unknown-linux-gnu
```

And this will build and run an `aarch64 musl` target:

```
cross test --target aarch64-unknown-linux-musl
cross run --target aarch64-unknown-linux-musl
```

It's also possible to build and even run Windows targets like this, but it uses Wine by the looks of it, so results may vary. Pretty cool nevertheless.

```
cross test --target x86_64-pc-windows-gnu
cross run --target x86_64-pc-windows-gnu
```
