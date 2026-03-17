CC=gcc
CPP=cpp
AS=as
LD=gcc

CFLAGS=-m32
TARGET=stopnje_prevajanja

all: build run

build: build_o
	$(LD) $(CFLAGS) main.o -o $(TARGET)

run: build
	./$(TARGET)