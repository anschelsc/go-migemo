include $(GOROOT)/src/Make.$(GOARCH)

TARG     = migemo
CGOFILES = file.go

CGO_CFLAGS  = -I../src
CGO_LDFLAGS  = -L.. -lmigemo

include $(GOROOT)/src/Make.pkg

%: install %.go
	$(GC) $*.go
	$(LD) -o $@ $*.$O

example:
	@export LD_LIBRARY_PATH=/usr/local/lib;  ¥
	./main
