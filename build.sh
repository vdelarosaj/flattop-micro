#!/bin/bash

build_dir=./builds

mkdir -p $build_dir
openscad -o $build_dir/focusing_assembly.stl openscad/focusing_assembly.scad
openscad -o $build_dir/standoffs.stl openscad/standoffs.scad
openscad -o $build_dir/plates.dxf openscad/plates.scad
