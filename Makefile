CC	=cc
CFLAGS	=-Wall -Wextra -Werror

all:	neote

%.o: %.c %.h
	$(CC) $(CFLAGS) -c $^

neote: neote.o
	$(CC) $(CFLAGS) neote.o -o $@

clean:
	rm -rf *.o neote
