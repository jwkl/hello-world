# Sample makefile.
PROG=src/helloworld
CC=gcc
BINDIR=$(DESTDIR)/usr/bin
INSTALL=cp

# Compile commands.
$(PROG):src/hello.c
	$(CC) -o $(PROG) src/hello.c
	
# make clean command.
clean:
	-rm -rf $(PROG)
		
#make install command.
install:
	mkdir -p $(BINDIR)
	$(INSTALL) $(PROG) $(BINDIR)

# make uninstall command.
uninstall:
	-rm -rf $(BINDIR)/$(PROG)
