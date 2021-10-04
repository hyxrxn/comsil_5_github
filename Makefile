cc=g++
cflags = -W -g
target = main

objects = main.o array.o rangearray.o

$(target) : $(objects)
	$(cc) $(cflags) -o $(target) $(objects)

%.o : %.c
	$(cc) $(cflags) -c -o $@ $<

main.o string_manipulation.o output.o : Array.h RangeArray.h

.PHONY : clean
clean :
	rm $(target) $(objects)
