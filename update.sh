#!/bin/bash

git clone https://github.com/openconfig/public.git
go run $GOPATH/pkg/mod/github.com/openconfig/ygot@v0.12.2/generator/generator.go \
 -path=public/release/models
