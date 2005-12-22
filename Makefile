# Makefile for a binary

# This should be the target of this Makefile.
DEST=tz

CC=gcc
CXX=g++
CXXFLAGS=-g -I.
CFLAGS=
AR=ar
ARFLAGS=-cr
RFLAG=-C

##########################
FLAGS=$(CXXFLAGS)
COMP=$(CXX)
MKFILE=Makefile
EXT=cpp
DEPEND=-M
LINKFLAGS=

.SUFFIXES:	.$(EXT)

# This variable should contain all the subdirectories you want to have
# recursively made.
DIRS=

# This variable contains all the libraries you want linked in.
LIBS=

HDR=	\
	tz.h


SRC=	\
	tz.$(EXT)	\
	main.$(EXT)	\


OBJS=	$(subst .$(EXT),.o,$(SRC))

DEPFILES=	$(subst .$(EXT),.d,$(SRC))

##########################

all:	$(DEST) $(DEPFILES)
	@echo done.

sub:	$(DEST) $(DEPFILES)
	for name in $(DIRS); do $(MAKE) $(RFLAG) $$name $@; done

$(DEST):	$(OBJS)
	$(COMP) $(LINKFLAGS) -o $(DEST) $(OBJS) $(LIBS)

%.o:	%.$(EXT)
	$(COMP) $(FLAGS) -c $<

%.d:	%.$(EXT)
	$(SHELL) -ec '$(COMP) $(DEPEND) $(FLAGS) $< \
		| sed "s/\($*\.o\)[ :]*/\1 $@ : /g" > $@'

clean:
	rm -f *.o 
	rm -f $(DEST)
	rm -f $(DEPFILES)

include $(DEPFILES)
