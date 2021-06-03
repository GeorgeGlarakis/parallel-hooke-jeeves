CC=gcc-9
CFLAGS=-Wall -O3

#TODO: 
# add the following implementations: 
# multistart_hooke_omp 
# multistart_hooke_omp_tasks 
# multistart_hooke_mpi 
# multistart_hooke_mpi_omp

all: multistart_hooke_seq

hooke: multistart_hooke_seq.c
	rm -f multistart_hooke_seq
	$(CC) $(CFLAGS) -o multistart_hooke_seq multistart_hooke_seq.c
	./multistart_hooke_seq


clean:
	rm -f multistart_hooke_seq
