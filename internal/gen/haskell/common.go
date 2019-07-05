package haskell

import (
	"github.com/golang/protobuf/proto"
	"github.com/golang/protobuf/protoc-gen-go/descriptor"
)

func GetHaskellPackageOption(file *descriptor.FileDescriptorProto) string {
	ex, _ := proto.GetExtension(file.Options, E_HaskellPackage)

	if ex != nil {
		asString := *ex.(*string)
		return asString
	}
	return ""
}
