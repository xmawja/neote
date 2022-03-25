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
SRCDIR	= src

VPATH	= $(SRCDIR)

##########################################################
##                      COMPILATION                     ##
##########################################################
# Linking 
neote: $(VPATH)/core/neote.c
	$(CC) $(CFLAGS) -o $@ $?

##########################################################
##                      PHONYS                          ##
##########################################################

# Clean build's
.PHONY: clean
clean:
	rm -rf *.o neote 