include $(GOROOT)/src/Make.inc

TARG=	blog
GOFMT=gofmt -spaces=true -tabindent=false -tabwidth=4

GOFILES=	\
	blog.go

include $(GOROOT)/src/Make.pkg

format:
	$(GOFMT) -w blog.go

run: example.go
	$(GC) example.go
	6l -o blog example.6
	./blog

allclean: clean
	rm -f blog
