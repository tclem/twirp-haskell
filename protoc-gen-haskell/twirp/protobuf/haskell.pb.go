// Code generated by protoc-gen-go. DO NOT EDIT.
// source: twirp/protobuf/haskell.proto

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
	Name:          "twirp.protobuf.haskell.imports",
	Tag:           "bytes,50000,opt,name=imports",
	Filename:      "twirp/protobuf/haskell.proto",
}

var E_Type = &proto.ExtensionDesc{
	ExtendedType:  (*descriptor.FieldOptions)(nil),
	ExtensionType: (*string)(nil),
	Field:         50000,
	Name:          "twirp.protobuf.haskell.type",
	Tag:           "bytes,50000,opt,name=type",
	Filename:      "twirp/protobuf/haskell.proto",
}

func init() {
	proto.RegisterExtension(E_Imports)
	proto.RegisterExtension(E_Type)
}

func init() { proto.RegisterFile("twirp/protobuf/haskell.proto", fileDescriptor_c47f4a7e07563506) }

var fileDescriptor_c47f4a7e07563506 = []byte{
	// 153 bytes of a gzipped FileDescriptorProto
	0x1f, 0x8b, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xff, 0xe2, 0x92, 0x29, 0x29, 0xcf, 0x2c,
	0x2a, 0xd0, 0x2f, 0x28, 0xca, 0x2f, 0xc9, 0x4f, 0x2a, 0x4d, 0xd3, 0xcf, 0x48, 0x2c, 0xce, 0x4e,
	0xcd, 0xc9, 0xd1, 0x03, 0x0b, 0x08, 0x89, 0x81, 0x65, 0xf5, 0x60, 0xb2, 0x7a, 0x50, 0x59, 0x29,
	0x85, 0xf4, 0xfc, 0xfc, 0xf4, 0x9c, 0x54, 0x84, 0xb6, 0x94, 0xd4, 0xe2, 0xe4, 0xa2, 0xcc, 0x82,
	0x92, 0xfc, 0x22, 0x88, 0x62, 0x2b, 0x0b, 0x2e, 0xf6, 0xcc, 0xdc, 0x82, 0xfc, 0xa2, 0x92, 0x62,
	0x21, 0x19, 0x3d, 0x88, 0x6a, 0x84, 0x31, 0x6e, 0x99, 0x39, 0xa9, 0xfe, 0x05, 0x25, 0x99, 0xf9,
	0x79, 0xc5, 0x12, 0x17, 0xda, 0x98, 0x15, 0x18, 0x35, 0x38, 0x83, 0x60, 0xca, 0xad, 0x8c, 0xb9,
	0x58, 0x4a, 0x2a, 0x0b, 0x52, 0x85, 0x64, 0xb1, 0x68, 0x4b, 0xcd, 0x49, 0x41, 0xd7, 0x07, 0x56,
	0xec, 0xc4, 0x19, 0xc5, 0x0e, 0x75, 0x5b, 0x12, 0x1b, 0x58, 0xbd, 0x31, 0x20, 0x00, 0x00, 0xff,
	0xff, 0x71, 0xfc, 0x7f, 0xec, 0xda, 0x00, 0x00, 0x00,
}