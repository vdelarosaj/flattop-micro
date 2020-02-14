/*

This part provides a mount for the OpenFlexure Microscope optics module, that allows you to focus it but not move in X or Y.

It's (c) Richard Bowman 2020, released under CERN Open Hardware License v2.

NB a standard well plate is 127.71 mm x 85.43 mm - so lets make the platform 250x160

*/

use <../openflexure-microscope/openscad/z_axis.scad>;
use <../openflexure-microscope/openscad/utilities.scad>;
include <parameters.scad>;
use <focusing_assembly.scad>;

difference(){
    minkowski(){
        circle(r=20);
        square([210,120], center=true);
    }

    // mounting screws
    projection(cut=false) top_mounting_screw_frame() cylinder(d=2.8);

    // objective
    circle(r=20);
}

