#!/bin/bash

build_dir=./builds

mkdir -p $build_dir
openscad -o $build_dir/focusing_assembly.stl openscad/focusing_assembly.scad
openscad -o $build_dir/standoffs.stl openscad/standoffs.scad
openscad -o $build_dir/actuator_foot.stl openscad/actuator_foot.scad
openscad -o $build_dir/thumbwheel.stl openscad/thumbwheel.scad
openscad -o $build_dir/optics_picamera_2_rms_f50d13.stl openflexure-microscope/openscad/optics.scad -D sample_z=65 -D 'optics="rms_f50d13"' -D 'camera="picamera_2"' -D beamsplitter=false
openscad -o $build_dir/plates.dxf openscad/plates.scad
