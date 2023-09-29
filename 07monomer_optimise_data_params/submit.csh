#!/bin/bash

foreach stepsize ( 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 )
   set all=$stepsize
   cp data.template data.$all
   echo STEP $stepsize 0.0 >> data.$all
   cp sbatch.template sbatch.$all
   echo csh paramsop.csh $all >> sbatch.$all
   sbatch sbatch.$all sbatch.log
end
