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
# App Directorys
SRCDIR	= \
	src/core
HDRDIR	= \
	inc/core
# Builld Directorys
OBJDIR	= obj
BINDIR	= bin
# Organized Directorys
APPDIR	= $(SRCDIR) $(HDRDIR)
BLDDIR	= $(BINDIR) $(OBJDIR)
# Search Directorys 
VPATH	= $(APPDIR)

# Declaration Variables
SOURCES	:= $(SRCDIR)/*.c
HEADERS := $(HDRDIR)/*.h
OBJECTS	:= $(SOURCES:$(SRCDIR)/%.c=$(OBJDIR)/%.o)

# Shell Variables
REMOVE	= rm -rf

##########################################################
##                      COMPILATION                     ##
##########################################################
# Linking 
$(TARGET): $(SOURCES)
	@mkdir -p $(BINDIR)
	$(CC) $(CFLAGS) -o $(BINDIR)/$@ $?
	@echo "Linking Complete"
#Compilation


##########################################################
##                      PHONYS                          ##
##########################################################
# Run
.PHONY: run
run:
	@echo "Running ... $<"
	@./$(BINDIR)/$(TARGET)

# Clean build's
.PHONY: clean
clean:
	@$(REMOVE) $(BINDIR)
	@echo "Deleted ... $<"

# PHONY tagrets
.PHONY: all
all: $(BINDIR)/$(TARGET)
