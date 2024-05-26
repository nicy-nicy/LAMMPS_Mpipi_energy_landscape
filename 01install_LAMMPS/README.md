# Install LAMMPS 

Reference
- Joseph, Jerelle A., et al. "Physics-driven coarse-grained model for 
biomolecular phase separation with near-quantitative accuracy." 
Nature Computational Science 1.11 (2021): 732-743.

Summary
1. These steps are taken from the Supplementary Files of the paper referenced above. We need to install standalone LAMMPS to create the input file. The initial input file can be obtained using the steps given on https://github.com/josephresearch/MpipiStructureScript and the final input file can be obtained by running standalone LAMMPS to get a physical structure.
2. On the command line run the following commands to make lmp_serial executable.
If compiling with more recent version of LAMMPS, instead of `make yes-USER-MISC` run
`make yes-EXTRA-PAIR`.
```
wget https://github.com/lammps/lammps/archive/refs/tags/patch_10Mar2021.tar.gz
tar zxf patch_10Mar2021.tar.gz
cd lammps-patch_10Mar2021/src/
make yes-USER-MISC
make yes-MOLECULE
make serial
```
