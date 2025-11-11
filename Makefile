CC      := gcc
CFLAGS  := -std=c99 -Wall -Wextra -pedantic -g

EXE     := schedsim
SRC     := schedsim.c util.c

.PHONY: all clean

all: $(EXE)

$(EXE): $(SRC)
	$(CC) $(CFLAGS) $^ -o $@

clean:
	rm -f $(EXE) *.o
