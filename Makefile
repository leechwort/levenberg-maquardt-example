CC=gcc
CFLAGS=-I.
LDLAGS=-lm
DEPS = levmarq.h
OBJ = main.o levmarq.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS) $(LDLAGS)

main: $(OBJ)
	gcc -o $@ $^ $(CFLAGS) $(LDLAGS)

clean:
	rm -f $(ODIR)/*.o *~ core $(INCDIR)/*~ 
