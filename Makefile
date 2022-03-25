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
# Name
TARGET	= neote
# Directorys
SRCDIR	= src
BINDIR	= bin
VPATH	= $(SRCDIR)

##########################################################
##                      COMPILATION                     ##
##########################################################
# Linking 
$(TARGET): $(VPATH)/core/neote.c
	mkdir -p $(BINDIR)
	$(CC) $(CFLAGS) -o $(BINDIR)/$@ $?

##########################################################
##                      PHONYS                          ##
##########################################################

# Clean build's
.PHONY: clean
clean:
	rm -rf $(BINDIR) 

# PHONY tagrets
.PHONY: all
all: $(BINDIR)/$(TARGET)
