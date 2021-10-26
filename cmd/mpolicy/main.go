package main

import (
	"fmt"

	oc "github.com/jopietsch/mpolicy/pkg/ocmodels"
	"github.com/openconfig/ygot/ygot"
)

func main() {
	fmt.Println("Hello, world!")

	d := &oc.Device{}

	j, err := ygot.EmitJSON(d, &ygot.EmitJSONConfig{
		Format: ygot.RFC7951,
		Indent: "  ",
		RFC7951Config: &ygot.RFC7951JSONConfig{
			AppendModuleName: true,
		},
	})
	if err != nil {
		panic(err)
	}
	fmt.Printf("Empty JSON: %v\n", j)

}
