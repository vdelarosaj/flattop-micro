# Attach components
Once you have assembled the microscope, it's time to add the optics module and, optionally, the Rasberry Pi.

{{BOM}}

## Method
### Build the optics module
The microscope uses the optics module from the [OpenFlexure Microscope], which attaches in the same way.  See the [instructions for the optics module] for details of how to construct this.

TODO: copy and paste the documentation into this repository?

[OpenFlexure Microscope]: https://openflexure.org/projects/microscope/
[instructions for the optics module]: https://build.openflexure.org/openflexure-microscope/v6.1.2/docs/#/2b_high_resolution_optics_module

### Attach the optics module
An [assembled OpenFlexure high-resolution optics module]{qty:1} can be attached to the [focusing assembly] in the same way it attaches to the microscope: the mounting screw (part of the optics module).  Insert the screw head through the bottom of the "keyhole" slot, then slide the optics module up so the objective is level with the top of the plate.  Insert a [2.5mm ball-ended hex key]{qty:1} through the hole in the [focusing assembly] and tighten the screw to lock the optics module in place.

![](images/optics_module_lock.jpg)![](images/optics_module_assembled.jpg)![](images/optics_module_parts.jpg)

[assembled OpenFlexure high-resolution optics module]: parts/optics_module.md
[focusing assembly]: parts/focusing_assembly.md
[2.5mm ball-ended hex key]: parts/2_5_mm_hex_key.md "{cat:tool}"

### Attach the Raspberry Pi
You can screw the Raspberry Pi to the bottom of the bottom plate, if you want to keep it attached to the microscope.

### Attach illumination
If you like, you can print the illumination module from the [OpenFlexure microscope] and screw it on to the [top plate].

[top plate]: parts/top_plate.md

# Finished item
Congratulations - you can now use your microscope.  You could use the software from the [OpenFlexure microscope] or just use ``raspistill`` or ``raspivid``.  If you use a camera other than the Raspberry Pi camera, you'll need software for that camera instead.

![](images/assembled_oblique.jpg)![](images/assembled_front.jpg)![](images/assembled_bottom.jpg)