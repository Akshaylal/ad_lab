SOURCES=$(wildcard *.c)

EXECS=$(SOURCES:%.c=%.out)

all: $(EXECS)

run: $(EXECS)
	./$(EXECS)

%.out: %.c
	gcc $< -o $@

clean:
	rm $(EXECS)

random:
	gcc rangen/aio.c -o aio
	./aio
