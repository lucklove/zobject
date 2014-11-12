all:
	gcc -Wall -O -std=c11 *.c -o test
clean:
	rm -f test
