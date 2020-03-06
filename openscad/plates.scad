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

$fn=64;

module m3_tap(){
    // an m3 tapped hole
    circle(d=2.8);
}
module m3_clearance(){
    // an m3 clearance hole
    circle(d=3.5);
}

module top_plate(){
    // The plate at the top of the microscope - the sample goes here
    difference(){
        minkowski(){
            circle(r=20);
            square(plate_dimensions - [40, 40], center=true);
        }

        // mounting screws
        top_mounting_screw_frame() m3_tap();
        rotate(180) each_illumination_arm_screw() m3_tap();

        reflect([1,0]) reflect([0,1]) translate(plate_dimensions/2 - [1,1]*plate_support_inset) m3_tap();

        // objective
        circle(r=20);
    }
}

module bottom_plate(){
    // The plate underneath the focusing mechanism
    difference(){
        union(){
            minkowski(){
                circle(r=plate_support_r);
                square(plate_dimensions - [2,2]*plate_support_inset, center=true);
            }
            translate([0,plate_dimensions[1]/2 - 50]) circle(50);
        }

        // mounting screws
        bottom_mounting_screw_frame(outer=true, inner=false) m3_tap();
        bottom_mounting_screw_frame(outer=false, inner=true) m3_clearance();
        bottom_mounting_screw_frame(outer=true, inner=false) translate([10,0]) circle(d=10);
    
        reflect([1,0]) reflect([0,1]) translate(plate_dimensions/2 - [1,1]*plate_support_inset) m3_clearance();

        // objective
        hull(){
            circle(r=30);
            translate([0,-plate_dimensions[1]/2]) square([plate_dimensions[0]-2*plate_support_inset-2*plate_support_r,1], center=true);
        }

        // mechanism
        projection(cut=true) z_axis_casing_cutouts();

    }
}

top_plate();
translate([0,plate_dimensions[1]]) bottom_plate();
