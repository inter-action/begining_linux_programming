    
create two library file

    gcc -c bill.c fred.c

create a program file that use the two libraries, compile doesn't link

    touch lib.h  # create a header file, good practice
    gcc -c program.c

build to a single binary

    gcc -o program program.o bill.o
     ./program

Now you’ll create and use a library. Use the ar program to create the archive 
and add your object files to it. The program is called ar because it creates 
archives, or collections, of individual files placed together in one large file. 

    ar crv libfoo.a bill.o fred.o


The library is created and the two object files added. To use the library successfully, 
some systems, notably those derived from Berkeley UNIX, require that a table of contents 
be created for the library. Do this with the ranlib command. In Linux, this step isn’t 
necessary (but it is harm- less) when you’re using the GNU software development tools.

    ranlib libfoo.a


    gcc -o program program.o libfoo.a

You could also use the –l option to access the library, but because it is not in any of the 
standard places, you have to tell the compiler where to find it by using the –L option like this:


    gcc –o program program.o –L. –lfoo

The –L. option tells the compiler to look in the current directory (.) for libraries. 
The –lfoo option tells the compiler to use a library called libfoo.a (or a shared library, 
libfoo.so, if one is present). 

    ./program

