TIME=/usr/bin/time
which $TIME

cd poseidon-starky
cargo build
ROWS=64 RUSTFLAGS=-Ctarget-cpu=native cargo bench -- bench_poseidon_starky
ROWS=128 RUSTFLAGS=-Ctarget-cpu=native cargo bench -- bench_poseidon_starky
ROWS=256 RUSTFLAGS=-Ctarget-cpu=native cargo bench -- bench_poseidon_starky
ROWS=512 RUSTFLAGS=-Ctarget-cpu=native cargo bench -- bench_poseidon_starky
ROWS=1024 RUSTFLAGS=-Ctarget-cpu=native cargo bench -- bench_poseidon_starky
ROWS=2048 RUSTFLAGS=-Ctarget-cpu=native cargo bench -- bench_poseidon_starky
ROWS=4096 RUSTFLAGS=-Ctarget-cpu=native cargo bench -- bench_poseidon_starky
ROWS=8192 RUSTFLAGS=-Ctarget-cpu=native cargo bench -- bench_poseidon_starky
ROWS=16384 RUSTFLAGS=-Ctarget-cpu=native cargo bench -- bench_poseidon_starky
ROWS=32768 RUSTFLAGS=-Ctarget-cpu=native cargo bench -- bench_poseidon_starky
ROWS=65536 RUSTFLAGS=-Ctarget-cpu=native cargo bench -- bench_poseidon_starky



