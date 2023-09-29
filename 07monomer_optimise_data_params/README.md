# Optimise parameters in the data file to obtain global minimum

Acknowledgement
- The scripts are adapted from the previous scripts obtained from David Wales.

> **Note:** Always check all the scripts before running to ensure that the path 
to your executable is specified there.

Summary
1. The input files required are in.lammps and yyggyyfinal.dat which are same
as the ones used in the previous step where we ran basin-hopping.
2. The data.template is similar to data file except that here we are
trying to optimise the value of step size parameter and therefore, data.template
file has STEP keyword commented out.
3. In the paramsop.csh specify the correct username and path for directory
and executable. You may need to change the names of the file that you are
copying, such as yyggyyfinal.dat to specify the name of the correct
final configuration file for your system.
4. From the command line run,
```
csh submit.csh
```
5. Analyse the lowest.1 files to choose the optimum value of step size.
In this particular case, the value of step size maybe chosen based on the maximum
number of distinct local minima that are found when a particular step size is used.
6. You can then run longer basin-hopping calculation, i.e., with more number
of steps to ensure that you have found the global minimum for your system.
