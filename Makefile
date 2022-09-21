DYLD_LIBRARY_PATH=$(PWD)

libmy.dylib:
	gcc -dynamiclib libmy.c -o libmy.dylib
program: libmy.dylib
	clang program.mm -o program.o -framework Foundation -I. -lmy -L.
clean:
	rm *.o
	rm *.dylib
