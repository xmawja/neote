##########################################################
##			GENERALS			##
##########################################################
# Compiler target
CC	= cc
# Compiling flags
CFLAGS	= -Wall -Wextra -Werror
# Linking flags
LFLAGS	=
# Libraries flags
LDFLAGS	=

TARGET 	:= neote
all:	neote

%.o: %.c %.h
	$(CC) $(CFLAGS) -c $^

$(TARGET): neote.o
	$(CC) $(CFLAGS) neote.o -o $@

clean:
	rm -rf *.o neote

.PHONY: clean 
