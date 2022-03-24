CC	=cc
CFLAGS	=-Wall -Wextra -Werror


TARGET 	:= neote
all:	neote

%.o: %.c %.h
	$(CC) $(CFLAGS) -c $^

$(TARGET): neote.o
	$(CC) $(CFLAGS) neote.o -o $@

clean:
	rm -rf *.o neote

.PHONY: clean 
