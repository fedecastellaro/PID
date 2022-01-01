CC=gcc
CFLAGS=-I.
DEPS = PID.h
OBJ = PID_example.o PID.o 

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

test: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)
	./test

# This way, when statement #1 fails (throws error), run statement #2, which is simply true.
clean:
	rm -rf $(OBJ) || true
	rm test
