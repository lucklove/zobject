This project is part of ZBase, which consists a lot of be code.
see https://github.com/lucklove/ZBase for detail.

INSTALL:
	This is not a lib, so there is no need for you to install it.
	If you want to use these code, just add them in your project.
	There are two unit test, zobj_test and exception test, to run
	them, you should build them firstly. You should make sure you
	have install gcc4.9(or later) correctly. If you use linux, just 
	run make, and then you can run the tests by ./zobj_test or 
	./exception_test. If you use windows, then mingw is a good choice. 
	I have compile this successful in Code::Blocks with mingw 4.9.1,
	make sure your gcc version is 4.9.1 or later. The exception_test 
	use pthread, you should link to pthread lib when compile it.
