CC=gcc
CFLAGS=-Wextra -Werror -Wall -pedantic
LDFLAGS=
SOURCES=brainfreeze.c
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE=brainfreeze

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $^ -o $@

%.o : %.c %.h
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm $(EXECUTABLE) $(OBJECTS)
