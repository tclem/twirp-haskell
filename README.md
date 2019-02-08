# twirp-haskell

Very, very alpha implementation of Twirp service generation for Haskell.

This project provides a number of things:

1. A protoc plugin for generating simple Haskell datatypes for Messages and Enums defined in a proto file.
2. A protoc plugin for generating a Haskell Twirp service (based on Servant) for Services defined in a proto file.
3. A haskell library, `twirp` for quickly serving up the generated application.

An example, end-to-end application is included in `app`.

## Usage

Use the protoc plugin to generate a twirp service and associated protobuf types from a proto file.

```
$ protoc --proto_path=./proto \
  --plugin=protoc-gen-twirp_haskell=./script/run-twirp_haskell --twirp_haskell_out=./app/Twirp/Example \
  --plugin=protoc-gen-haskell=./script/run-haskell --haskell_out=./app/Twirp/Example \
  ./proto/haberdasher.proto
```

You can also install the protoc plugins like so:

```
$ go get github.com/tclem/twirp-haskell/protoc-gen-twirp_haskell
$ go get github.com/tclem/twirp-haskell/protoc-gen-haskell
$ protoc --proto_path=./proto \
  --twirp_haskell_out=./app/Twirp/Example \
  --haskell_out=./app/Twirp/Example \
  ./proto/haberdasher.proto
```
