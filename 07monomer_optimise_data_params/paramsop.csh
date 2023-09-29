#!/bin/csh
# Initial script obtained from David Wales and adapted for use here
# The generalgminfiles directory specifies the path for the directory
# where you want to run the calculations for optimising the value
# of parameters given in the data file.

set directory=$1
set generalgminfiles=/sharedscratch/nn320/LammpsMpipi/07monomer_optimise_data_params
set exec=/sharedscratch/nn320/softwarewales/GMIN/builds/gfortran_lammps_mpi/LMPGMIN

mkdir -p $directory
cd $directory
cp ../data.$directory ./data
cp ../in.lammps ../yyggyyfinal.dat .
cp ../sbatch.$directory .
$exec > output
