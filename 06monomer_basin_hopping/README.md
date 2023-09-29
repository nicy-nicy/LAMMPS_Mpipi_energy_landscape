# Basin-hopping calculation to obtain global minimum

Reference
- Wales, D. J. GMIN: A program for finding global minima and calculating thermodynamic
properties from basin-sampling. URL http://www-wales.ch.cam.ac.uk/GMIN/.
- Wales, D. J. & Doye, J. P. Global optimization by basin-hopping and the lowest energy structures
of Lennard-Jones clusters containing up to 110 atoms. J. Phys. Chem. A 101 (28), 5111–5116
(1997)
- The explanation of all keywords used in data file is given on
https://www-wales.ch.cam.ac.uk/GMIN.doc/node7.html

> **Note:** Make necessary changes to the submission script sbatch_lammps_gmin
such as specify the path to your LMPGMIN executable.

Summary
1. The input file yyggyyfinal.dat is obtained from the previous step in
which we created the final configuration file.
2. The input files data, in.lammps are created by the user for use with LMPGMIN.
3. In the in.lammps file you may need to change the input line containing
the keyword read_data to specify the correct name of the final configuration
file that you are using for your system.
4. Optimise the parameters such as step size in data file by following the
procedure given in the next step. Then run longer basin hopping runs. Once
you think you have found the global minimum, try to create a stationary
point database by adding the local minima obtained after running GMIN. For
this you will need to run OPTIM and you require alllowest.xyz file which
is just a copy of lowest.1 file here.
