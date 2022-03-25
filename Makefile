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
BINDIR	= bin
VPATH	= $(SRCDIR)

##########################################################
##                      COMPILATION                     ##
##########################################################
# Linking 
neote: $(VPATH)/core/neote.c
	mkdir -p $(BINDIR)
	$(CC) $(CFLAGS) -o $(BINDIR)/$@ $?

##########################################################
##                      PHONYS                          ##
##########################################################

# Clean build's
.PHONY: clean
clean:
	rm -rf $(BINDIR) 
