SOURCES=$(wildcard *.c)

EXECS=$(SOURCES:%.c=%)

all: $(EXECS)

run: $(EXECS)
	./$(EXECS)

%.o: %.cpp
	g $< -o $@

clean:
	rm $(EXECS)
