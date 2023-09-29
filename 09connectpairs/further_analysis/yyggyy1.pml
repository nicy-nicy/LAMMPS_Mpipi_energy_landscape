load extractedmin1.xyz
show spheres
set sphere_scale, 0.4
set sphere_mode, 5
set label_font_id, 18
set label_size, 80
label all, "%s" % (name)
bond resi 1, resi 2
bond resi 2, resi 3
bond resi 3, resi 4
bond resi 4, resi 5
bond resi 5, resi 6
set_bond line_color, white, all
set_bond line_width, 26, all
show lines
distance resi 6, resi 1
set dash_color, yellow
set dash_width, 1
set dash_radius, 0.1
set dash_gap, 0.4
set dash_length, 0.35
set dash_rounds_ends, 0
color gray, resi 3
color gray, resi 4
color orange, resi 1
color orange, resi 2
color orange, resi 5
color orange, resi 6
set ray_trace_fog, 0                                                            
set ray_shadows, 0                                                              
unset depth_cue                                                                 
bg_color white                                                                  
set antialias, 2                                                                
set hash_max, 300                                                               
set ray_trace_mode, 3                                                           
set ray_trace_color, black                                                      
set ray_opaque_background, off 
