CC =  gcc
CFLAGS = -O2 -W -Wall -I/usr/local/include -L/usr/local/lib -I/opt/local/include -L/opt/local/lib

all : fdmf_sonic_reducer fdmf_correlator

fdmf_correlator : fdmf_correlator.o

fdmf_sonic_reducer : fdmf_sonic_reducer.o
	$(CC) $(CFLAGS) -lfftw3 -lm fdmf_sonic_reducer.c -o $@

clean :  
	rm -f *.o fdmf_sonic_reducer fdmf_correlator $(OBJS) tags

.PHONY: tags
tags :
	ctags *.c *.h
