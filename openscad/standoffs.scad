/*

This part provides a mount for the OpenFlexure Microscope optics module, that allows you to focus it but not move in X or Y.

It's (c) Richard Bowman 2020, released under CERN Open Hardware License v2.

NB a standard well plate is 127.71 mm x 85.43 mm - so lets make the platform 250x160

*/

use <../openflexure-microscope/openscad/z_axis.scad>;
use <../openflexure-microscope/openscad/illumination.scad>;
use <../openflexure-microscope/openscad/utilities.scad>;
include <parameters.scad>;
use <focusing_assembly.scad>;

module post_with_holes(h, r2=plate_support_r){
    // A post with a screw that pokes out one end, and a tapped hole in the other
    difference(){
        hull(){
            cylinder(r=plate_support_r, h=12);
            cylinder(r=r2, h=h);
        }

        cylinder(d=3.5, h=10, center=true);
        translate([0,0,3]) hull() repeat([0,20,20], 2) cylinder(d=8, h=15);

        translate([0,0,h-8]) trylinder_selftap(2.9, h=12);
    }
}

post_with_holes(plate_separation);
translate([2.5*plate_support_r,0,0]) post_with_holes(30,5);