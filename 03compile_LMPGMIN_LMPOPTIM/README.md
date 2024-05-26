# Compiling LMPGMIN and LMPOPTIM executables

Reference
- https://wikis.ch.cam.ac.uk/ro-walesdocs/wiki/index.php/Compiling_Wales_Group_codes_using_cmake

> **Note:** Instead of nn320, your should use your own username.

Summary
1. Steps for compiling **LMPGMIN** for basin-hopping calculation in GMIN.
```
mkdir -p /sharedscratch/nn320/softwarewales/GMIN/builds/gfortran_lammps_mpi
cd !$
module load cmake/3.23.2
module load gcc/7.5.0
module load mpi/openmpi/gnu7/4.1.0
FC=mpif90 CC=mpicc CXX=mpicxx cmake ~/softwarewales/GMIN/source/ -DCOMPILER_SWITCH=gfortran -DWITH_LAMMPS=1 -DWITH_ALIGN=no -DWITH_MYBLAS=yes -DWITH_MYLAPACK=yes
make -j12
```
2. Steps for compiling **LMPOPTIM executable** for discrete path sampling calculation
using OPTIM and PATHSAMPLE.
```
mkdir -p /sharedscratch/nn320/softwarewales/OPTIM/builds/gfortranlammp
cd !$
module load cmake/3.23.2
module load gcc/7.5.0
module load mpi/openmpi/gnu7/4.1.0
FC=mpif90 CC=mpicc CXX=mpicxx cmake ~/softwarewales/OPTIM/source/ -DCOMPILER_SWITCH=gfortran -DWITH_LAMMPS=1 -DWITH_ALIGN=no -DWITH_MYBLAS=yes -DWITH_MYLAPACK=yes
make -j12
```
