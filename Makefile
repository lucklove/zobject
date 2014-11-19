CC = gcc
RM = rm
CFLAGS = -Wall -std=c11 -I../inc -ltcmalloc

ZOBJ_TEST_OBJS = zobject.o zobj_test.o mem.o rb_tree.o ref.o exception.o spin.o

EXCEPTION_TEST_OBJS = exception.o exception_test.o rb_tree.o zobject.o mem.o spin.o ref.o

.c.o:
	$(CC) -c $(CFLAGS) $*.c

all: zobj_test exception_test

exception_test: $(EXCEPTION_TEST_OBJS)
	$(CC) $(CFLAGS) -o $@ $(EXCEPTION_TEST_OBJS) -lpthread

zobj_test: $(ZOBJ_TEST_OBJS)
	$(CC) $(CFLAGS) -o $@ $(ZOBJ_TEST_OBJS)

clean:
	$(RM) -f *.o zobj_test exception_test
