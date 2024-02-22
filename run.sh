TIME=/usr/bin/time
which $TIME

cd poseidon-starky
cargo build
ROWS=64 RUSTFLAGS=-Ctarget-cpu=native cargo bench
ROWS=128 RUSTFLAGS=-Ctarget-cpu=native cargo bench
ROWS=256 RUSTFLAGS=-Ctarget-cpu=native cargo bench
ROWS=512 RUSTFLAGS=-Ctarget-cpu=native cargo bench
ROWS=1024 RUSTFLAGS=-Ctarget-cpu=native cargo bench
ROWS=2048 RUSTFLAGS=-Ctarget-cpu=native cargo bench
ROWS=4096 RUSTFLAGS=-Ctarget-cpu=native cargo bench
ROWS=8192 RUSTFLAGS=-Ctarget-cpu=native cargo bench
ROWS=16384 RUSTFLAGS=-Ctarget-cpu=native cargo bench
ROWS=32768 RUSTFLAGS=-Ctarget-cpu=native cargo bench
ROWS=65536 RUSTFLAGS=-Ctarget-cpu=native cargo bench



