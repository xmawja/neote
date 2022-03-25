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
TESDIR	= test
# Builld Directorys
OBJDIR	= obj
BINDIR	= bin
# Organized Directorys
APPDIR	= $(SRCDIR) $(HDRDIR)
BLDDIR	= $(OBJDIR) $(BINDIR)
# Search Directorys 
VPATH	= $(APPDIR) $(BLDDIR)

# Declaration Variables
SOURCES	= $(SRCDIR)/*.c
HEADERS	= $(HDRDIR)/*.h
TESUNIT	= $(TESDIR)/*.c
OBJECTS	= $(SOURCES:$(SRCDIR)/%.c=$(OBJDIR)/%.o)
TESTBIN	= $(patsubst $(TESDIR)/%.c, $(TESDIR)/bin%, $(TESUNIT))

# Shell Variables
REMOVE	= rm -rf
MKDIR	= mkdir -p

##########################################################
##                      COMPILATION                     ##
##########################################################
# Compilation
$(OBJECTS)/%.o: $(OBJDIR)/*.o $(SRCDIR)*.c
	$(MKDIR) $(OBJDIR)
	$(CC) $(CFLAGS) -c $< -o $@
	@echo "Compiling ... $<"

# Linking 
$(TARGET): $(SOURCES)
	@$(MKDIR) $(BINDIR)
	$(CC) $(CFLAGS) -o $(BINDIR)/$@ $?
	@echo "Linking Complete"

##########################################################
##                      PHONYS                          ##
##########################################################
# Run
.PHONY: run
run:
	@echo "Running ... $<"
	@./$(BINDIR)/$(TARGET)

# Test
.PHONY: test
test:
	$(MKDIR) $(TESDIR)/bin
	@echo "Unit Test Loaded ..."
	$(TESUNIT) $(TESTBIN)
	for test in $(TESTBIN) ; do ./$$test ; done

# Clean build's
.PHONY: clean
clean:
	@$(REMOVE) $(BINDIR) $(OBJDIR)
	@echo "Deleted ... $<"

# PHONY tagrets
.PHONY: all
all: $(BINDIR)/$(TARGET)
