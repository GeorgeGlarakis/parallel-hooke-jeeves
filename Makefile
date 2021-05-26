CC=gcc-9
CFLAGS=-Wall -O3 -fopenmp

#TODO: 
# add the following implementations: 
# multistart_hooke_omp 
# multistart_hooke_omp_tasks 
# multistart_hooke_mpi 
# multistart_hooke_mpi_omp

all: multistart_hooke_omp

hooke: multistart_hooke_omp.c
	rm -f multistart_hooke_omp
	$(CC) $(CFLAGS) -o multistart_hooke_omp multistart_hooke_omp.c
	./multistart_hooke_omp

clean:
	rm -f multistart_hooke_omp
