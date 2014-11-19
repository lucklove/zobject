all:
	make zobj_test
	make exception_test
zobj_test: *.c *.h
	gcc -Wall -std=c11 zobj_test.c zobject.c rb_tree.c mem.c exception.c spin.c ref.c -o zobj_test
exception_test: *.c *.h
	gcc -Wall -std=c11 -lpthread exception_test.c exception.c ref.c rb_tree.c mem.c spin.c zobject.c -o exception_test
clean:
	rm -f zobj_test exception_test
