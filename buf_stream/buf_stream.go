package buf_stream

import (
	"encoding/binary"
	"errors"
)

// interface to read a memory buffer as a stream. Maintains an internal pointer to keep track of usage
type BufReader interface {
	Uint8() uint8
	Uint16() uint16
	Uint32() uint32
	Seek(newPointer uint) error
}

type BufStream struct {
	Pointer uint
	Buffer  []byte
}

func New(buf []byte) *BufStream {
	return &BufStream{
		Pointer: 0,
		Buffer: buf,
	}
}

func (b *BufStream) Uint8() uint8 {
	res := uint8(b.Buffer[b.Pointer])
	b.Pointer += 1
	return res
}

func (b *BufStream) Uint16() uint16 {
	res := binary.LittleEndian.Uint16(b.Buffer[b.Pointer : b.Pointer+2])
	b.Pointer += 2
	return res
}

func (b *BufStream) Uint32() uint32 {
	res := binary.LittleEndian.Uint32(b.Buffer[b.Pointer : b.Pointer+4])
	b.Pointer += 4
	return res
}

func (b *BufStream) Seek(newPointer uint) error {
	if len(b.Buffer) <= int(newPointer) {
		return errors.New("invalid pointer offset")
	}

	b.Pointer = newPointer
	return nil
}

func (b *BufStream) Peek(n uint) []byte {
	return b.Buffer[b.Pointer : b.Pointer+n]
}