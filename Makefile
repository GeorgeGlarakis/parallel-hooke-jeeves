CC=gcc-9
CFLAGS=-Wall -O3
MPI=mpicc
#CUDA=--mca opal_warn_on_missing_libcuda 0

#TODO: 
# add the following implementations: 
# multistart_hooke_omp 
# multistart_hooke_omp_tasks 
# multistart_hooke_mpi 
# multistart_hooke_mpi_omp

all: multistart_hooke_mpi

hooke: multistart_hooke_mpi.c
	rm -f multistart_hooke_mpi
	$(MPI) $(CUDA) $(CFLAGS) -o multistart_hooke_mpi multistart_hooke_mpi.c
	mpirun -np 2 ./multistart_hooke_mpi


clean:
	rm -f multistart_hooke_mpi
