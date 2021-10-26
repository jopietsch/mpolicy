#!/bin/bash

git clone https://github.com/openconfig/public.git
go run $GOPATH/pkg/mod/github.com/openconfig/ygot@*/generator/generator.go \
 -path=public/release/models,public/third_party/ietf -package_name=oc_models -output_file=pkg/ocmodels/oc_models.go \
 -generate_fakeroot -fakeroot_name=device -compress_paths=true -shorten_enum_leaf_names \
 -typedef_enum_with_defmod -exclude_modules=ietf-interfaces\
 -compress_paths=true public/release/models/bgp/*.yang public/release/models/policy/*.yang 
