# Add local minima obtained from GMIN to a PATHSAMPLE database.

Reference
- https://wikis.ch.cam.ac.uk/ro-walesdocs/wiki/index.php/Adding_several_minima_obtained_using_GMIN_(maybe_using_BHPT)_to_min.data
- The explanation of all odata and pathdata keywords are given in
- https://www-wales.ch.cam.ac.uk/OPTIM.doc/node4.html and
- https://www-wales.ch.cam.ac.uk/PATHSAMPLE.2.1.doc/node6.html

Summary
1. The input files in.lammps and yyggyyfinal.dat are same as the ones used during basin-hopping with LMPGMIN.
2. The alllowest.xyz file is same as the lowest.1 file obtained after long
basin-hopping calculation.
3. Note that read_data keyword in in.lammps and COPYFILES keyword in pathdata
file should specify the correct name of the final configuration file.
4. In odata.addminxyz and odata.connect you will need to modify the lines below POINTS
to make it the same as coordinates of global minimum obtained using LMPGMIN.
