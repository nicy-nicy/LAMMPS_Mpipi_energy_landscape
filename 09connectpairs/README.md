# Running discrete path sampling to obtain connected pathways between minima of interest.

Summary
1. Here we use CONNECTPAIRS keyword in PATHSAMPLE to obtain connected pathways
between pair of minima specified in connectpairs file created by the user.
2. You can do further analysis on PATHSAMPLE database, such as plot
disconnectivity graphs, calculate heat capacity (Cv), extract coordinates
of particular minima and use pymol to create nice structures.
3. Some suggestions to make figures for publications include:
use delta 0.01 and scalebar 5 or 10 in dinfo, if the labels are too small just
get rid of them and mention it in the caption of the figure, also put
the distance labels above or below the dotted lines, make the lines on the
disconnectivity graph thicker.
4. Some nice colors in pymol maybe, cyan, orange, red, green etc.
