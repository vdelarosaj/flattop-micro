/*

This part provides a mount for the OpenFlexure Microscope optics module, that allows you to focus it but not move in X or Y.

It's (c) Richard Bowman 2020, released under CERN Open Hardware License v2.

*/

use <../openflexure-microscope/openscad/z_axis.scad>;
use <../openflexure-microscope/openscad/utilities.scad>;
include <parameters.scad>;


module top_mounting_screw_frame(){
    // Transform that puts us in the frame of each of the 2 top mounting screws
    translate(top_mounting_screws_centre) mirror([0,0,1]) for(a=[-90, 90]) rotate(a) translate([0,12,0]){
        children();
    }
}

module bottom_mounting_screw_frame(){
    // Transform that puts us in the frame of each of the 2 bottom mounting screws
    reflect([1,0,0]) translate([20,50,0]) children();
}

// This is the actuator casing, as used in the microscope:
// The casing needs to have voids subtracted from it to fit the moving bits in
difference(){
    union(){
        z_axis_casing(condenser_mount=false);
        hull(){
            top_of_z_axis_casing();
            top_mounting_screw_frame() cylinder(d=10, h=15);
        }
        hull(){
            bottom_mounting_screw_frame() cylinder(d=10, h=5);
            translate([0,50,0]) cylinder(d=15, h=20);
        }
    }
    z_axis_casing_cutouts(); // void for the mechanism
    // mounting screws for the top plate
    top_mounting_screw_frame() sequential_hull(){
        cylinder(r=1.8, h=10, center=true, $fn=16);
        translate([0,0,3]) cylinder(r=1.8, h=d);
        translate([0,0,3]) cylinder(r=3.5, h=10);
        translate([0,20,23]) cylinder(r=3.5, h=10);
    }
    // mounting screws for the bottom plate
    bottom_mounting_screw_frame(){
        cylinder(d=4, h=20, center=true);
        translate([0,0,2]) cylinder(d=8, h=20);
    }
}
// We add on the actuator housing last, because it's got the clearance subtracted already.
z_actuator_housing();


// These are the moving parts of the axis
objective_mount();
z_axis_flexures();
z_axis_struts();
z_actuator_column();
