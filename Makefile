CC = clang
RM = rm -rf

CFLAGS = -Wall

OUTPUT = makefileAssignment
OBJS = driver.o file1.o file2.o

.PHONY: all clean

all: $(OUTPUT)

clean: $(OBJS) $(OUTPUT)
	$(RM) $^

$(OUTPUT): $(OBJS)
	$(CC) -o $@ $(CFLAGS) $^

%.o: %.c headers.h
	$(CC) -c -o $@ $(CFLAGS) $<
