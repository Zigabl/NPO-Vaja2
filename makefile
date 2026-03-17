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

build_i: main.c
	$(CPP) main.c > main.i

build_s: build_i
	$(CC) $(CFLAGS) -S main.i -o main.s

build_o: build_s
	$(AS) --32 main.s -o main.o

clean:
	rm -f *.i *.s *.o $(TARGET)
