// Code generated by protoc-gen-go. DO NOT EDIT.
// source: haskell.proto

package haskell

import (
	fmt "fmt"
	proto "github.com/golang/protobuf/proto"
	descriptor "github.com/golang/protobuf/protoc-gen-go/descriptor"
	math "math"
)

// Reference imports to suppress errors if they are not otherwise used.
var _ = proto.Marshal
var _ = fmt.Errorf
var _ = math.Inf

// This is a compile-time assertion to ensure that this generated file
// is compatible with the proto package it is being compiled against.
// A compilation error at this line likely means your copy of the
// proto package needs to be updated.
const _ = proto.ProtoPackageIsVersion3 // please upgrade the proto package

var E_Imports = &proto.ExtensionDesc{
	ExtendedType:  (*descriptor.FileOptions)(nil),
	ExtensionType: (*string)(nil),
	Field:         50000,
	Name:          "haskell.imports",
	Tag:           "bytes,50000,opt,name=imports",
	Filename:      "haskell.proto",
}

var E_HaskellPackage = &proto.ExtensionDesc{
	ExtendedType:  (*descriptor.FileOptions)(nil),
	ExtensionType: (*string)(nil),
	Field:         50001,
	Name:          "haskell.haskell_package",
	Tag:           "bytes,50001,opt,name=haskell_package",
	Filename:      "haskell.proto",
}

var E_Type = &proto.ExtensionDesc{
	ExtendedType:  (*descriptor.FieldOptions)(nil),
	ExtensionType: (*string)(nil),
	Field:         50000,
	Name:          "haskell.type",
	Tag:           "bytes,50000,opt,name=type",
	Filename:      "haskell.proto",
}

func init() {
	proto.RegisterExtension(E_Imports)
	proto.RegisterExtension(E_HaskellPackage)
	proto.RegisterExtension(E_Type)
}

func init() { proto.RegisterFile("haskell.proto", fileDescriptor_e1d90f56f5b26101) }

var fileDescriptor_e1d90f56f5b26101 = []byte{
	// 167 bytes of a gzipped FileDescriptorProto
	0x1f, 0x8b, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xff, 0xe2, 0xe2, 0xcd, 0x48, 0x2c, 0xce,
	0x4e, 0xcd, 0xc9, 0xd1, 0x2b, 0x28, 0xca, 0x2f, 0xc9, 0x17, 0x62, 0x87, 0x72, 0xa5, 0x14, 0xd2,
	0xf3, 0xf3, 0xd3, 0x73, 0x52, 0xf5, 0xc1, 0xc2, 0x49, 0xa5, 0x69, 0xfa, 0x29, 0xa9, 0xc5, 0xc9,
	0x45, 0x99, 0x05, 0x25, 0xf9, 0x45, 0x10, 0xa5, 0x56, 0x16, 0x5c, 0xec, 0x99, 0xb9, 0x05, 0xf9,
	0x45, 0x25, 0xc5, 0x42, 0x32, 0x7a, 0x10, 0xd5, 0x7a, 0x30, 0xd5, 0x7a, 0x6e, 0x99, 0x39, 0xa9,
	0xfe, 0x05, 0x25, 0x99, 0xf9, 0x79, 0xc5, 0x12, 0x17, 0xda, 0x98, 0x15, 0x18, 0x35, 0x38, 0x83,
	0x60, 0xca, 0xad, 0xdc, 0xb9, 0xf8, 0xa1, 0xd6, 0xc4, 0x17, 0x24, 0x26, 0x67, 0x27, 0xa6, 0xa7,
	0x12, 0x30, 0xe1, 0x22, 0xd4, 0x04, 0x3e, 0xa8, 0xb6, 0x00, 0x88, 0x2e, 0x2b, 0x63, 0x2e, 0x96,
	0x92, 0xca, 0x82, 0x54, 0x21, 0x59, 0x2c, 0xba, 0x53, 0x73, 0x52, 0xd0, 0x1d, 0x00, 0x56, 0xec,
	0xc4, 0x19, 0x05, 0xf3, 0x64, 0x12, 0x1b, 0x58, 0xbd, 0x31, 0x20, 0x00, 0x00, 0xff, 0xff, 0x95,
	0x95, 0x2e, 0x78, 0x05, 0x01, 0x00, 0x00,
}