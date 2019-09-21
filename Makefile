proj    = itsatty
lib     = lib$(proj).so
prefix := /usr/local
bindir := $(prefix)/bin
libdir := $(prefix)/lib

all: lib 

lib: $(proj).c
	$(CC) -shared -fPIC -o $(lib) $(proj).c

install: lib
	mkdir -p $(bindir)
	mkdir -p $(libdir)
	install -m 755 $(proj) $(bindir)/$(proj)
	install -m 755 $(proj).sh $(bindir)/$(proj).sh
	install -m 755 $(lib) $(libdir)/$(lib)
