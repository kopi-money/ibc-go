module github.com/cosmos/ibc-go/e2e

go 1.22.2

toolchain go1.22.3

// needed temporarily for v9.
replace (
	github.com/misko9/go-substrate-rpc-client/v4 => github.com/DimitrisJim/go-substrate-rpc-client/v4 v4.0.0-20240717100841-406da076c1d5
	github.com/strangelove-ventures/interchaintest/v8 => github.com/DimitrisJim/interchaintest/v8 v8.0.0-20240717102845-beba523a47ff
)

// TODO: using version v1.0.0 causes a build failure. This is the previous version which compiles successfully.
replace (
	github.com/ChainSafe/go-schnorrkel => github.com/ChainSafe/go-schnorrkel v0.0.0-20200405005733-88cbf1b4c40d
	github.com/ChainSafe/go-schnorrkel/1 => github.com/ChainSafe/go-schnorrkel v1.0.0
	github.com/vedhavyas/go-subkey => github.com/strangelove-ventures/go-subkey v1.0.7
)

// uncomment to use the local version of ibc-go, you will need to run `go mod tidy` in e2e directory.
replace github.com/cosmos/ibc-go/v9 => ../

replace github.com/cosmos/ibc-go/modules/light-clients/08-wasm => ../modules/light-clients/08-wasm

replace github.com/syndtr/goleveldb => github.com/syndtr/goleveldb v1.0.1-0.20210819022825-2ae1ddf74ef7

replace github.com/gogo/protobuf => github.com/regen-network/protobuf v1.3.3-alpha.regen.1
