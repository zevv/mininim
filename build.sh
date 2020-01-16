#!/bin/sh

nim c \
	-d:danger \
	-d:noSignalHandler \
	-d:useMalloc \
	--cpu:avr \
	--gc:arc \
	--os:any \
	--passC:-mmcu=atmega32 \
	--passL:-mmcu=atmega32 \
	--passC:-flto \
	--passL:-flto \
	--opt:size \
	t.nim  

nm -S --size-sort t | tail -10
size t
