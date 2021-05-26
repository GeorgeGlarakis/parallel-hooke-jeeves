CC=gcc-9
CFLAGS=-Wall -O3 -fopenmp

#TODO: 
# add the following implementations: 
# multistart_hooke_omp 
# multistart_hooke_omp_tasks 
# multistart_hooke_mpi 
# multistart_hooke_mpi_omp

all: multistart_hooke_omp_tasks

hooke: multistart_hooke_omp_tasks.c
	rm -f multistart_hooke_omp_tasks
	$(CC) $(CFLAGS) -o multistart_hooke_omp_tasks multistart_hooke_omp_tasks.c
	./multistart_hooke_omp_tasks

clean:
	rm -f multistart_hooke_omp_tasks
