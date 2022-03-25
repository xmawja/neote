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

##########################################################
##			PROJECTS			##
##########################################################
# Directorys
VPATH	= src

neote: neote.c
	$(CC) $(CFLAGS) -o $@ $?



clean:
	rm -rf *.o neote

.PHONY: clean 
