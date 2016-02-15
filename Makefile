CC = g++
CFLAGS = -I.
DEPS = res_pack.h res_pack_i.h crc32.h
OBJ = res_pack.o crc32.o

%.o: %.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

imgpack: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

.PHONY: clean

clean:
	rm -f *.o
