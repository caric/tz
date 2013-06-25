# Makefile for a binary

# This should be the target of this Makefile.
DEST=tz
CLOCKDEST=wclock
WHENDEST=when
FLTDEST=flt

CC=gcc
CXX=g++
CXXFLAGS=-g -I. -fpermissive
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

CLOCKSRC=	\
	tz.$(EXT)	\
	wclock.$(EXT)	\

WHENSRC=	\
	tz.$(EXT)	\
	when.$(EXT)	\

FLTSRC=	\
	tz.$(EXT)	\
	flt.$(EXT)	\

OBJS=	$(subst .$(EXT),.o,$(SRC))

CLOCKOBJS=	$(subst .$(EXT),.o,$(CLOCKSRC))

WHENOBJS=	$(subst .$(EXT),.o,$(WHENSRC))

FLTOBJS=	$(subst .$(EXT),.o,$(FLTSRC))

DEPFILES=	$(subst .$(EXT),.d,$(SRC))	\
		$(subst .$(EXT),.d,$(CLOCKSRC))	\
		$(subst .$(EXT),.d,$(WHENSRC))	\
		$(subst .$(EXT),.d,$(FLTSRC))	\

##########################

all:	$(DEST) $(CLOCKDEST) $(WHENDEST) $(FLTDEST) $(DEPFILES)
	@echo done.

sub:	$(DEST) $(DEPFILES)
	for name in $(DIRS); do $(MAKE) $(RFLAG) $$name $@; done

$(DEST):	$(OBJS)
	$(COMP) $(LINKFLAGS) -o $(DEST) $(OBJS) $(LIBS)

$(CLOCKDEST):	$(CLOCKOBJS)
	$(COMP) $(LINKFLAGS) -o $(CLOCKDEST) $(CLOCKOBJS) $(LIBS)

$(WHENDEST):	$(WHENOBJS)
	$(COMP) $(LINKFLAGS) -o $(WHENDEST) $(WHENOBJS) $(LIBS)

$(FLTDEST):	$(FLTOBJS)
	$(COMP) $(LINKFLAGS) -o $(FLTDEST) $(FLTOBJS) $(LIBS)

%.o:	%.$(EXT)
	$(COMP) $(FLAGS) -c $<

%.d:	%.$(EXT)
	$(SHELL) -ec '$(COMP) $(DEPEND) $(FLAGS) $< \
		| sed "s/\($*\.o\)[ :]*/\1 $@ : /g" > $@'

clean:
	rm -f *.o 
	rm -f $(DEST) $(CLOCKDEST) $(WHENDEST) $(FLTDEST)
	rm -f $(DEPFILES)

include $(DEPFILES)
