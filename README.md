# The OpenFlexure Flat-Top Microscope
A number of people have asked whether we could look at larger objects, ranging from mobile phones to 96-well plates, on the OpenFlexure Microscope.  Currently, that's tricky because of our sample stage, which is only big enough to take a standard 75x25mm slide, or a mini (40-50mm diameter) culture dish.  In response, Richard created this project, which combines the Z (focus) axis of the OpenFlexure Microscope with a large, flat top plate that you can sit bigger objects on.  Of course, you now have to move them in X and Y by hand (anyone who wants to add an XY stage to this design is more than welcome), but I hope some people will find this version useful.

![The assembled microscope](docs/images/assembled_oblique.jpg)


Currently there's no illumination - though it should in principle not be that hard to add an illuminator of some sort.

## Assembly instructions
You can view the [assembly instructions] online, generated from the source files in the [docs] folder.

[assembly instructions]: https://rwb27.gitlab.io/openflexure-flat-top-microscope/
[docs]: docs/

## STL files
The STL files are built automatically but are not currently distributed very well!  A snapshot is available in the [CI artefacts](https://gitlab.com/rwb27/openflexure-flat-top-microscope/-/jobs/1090433254/artifacts/browse).

## Compiling and contributing
### Cloning the project
The project consists of a number of interconnected [OpenSCAD] files.  In order to compile these into printable STL files, you need the whole folder, including the OpenFlexure Microscope files (because we pull in quite a lot of bits from there).  The easiest way to do this is to clone the git repository:
```
git clone --recurse-submodules https://gitlab.com/rwb27/openflexure-flat-top-microscope.git
```
NB the ``--recurse-submodules`` is important because it will pull in the openflexure microscope files - there's more information in Git's [submodules] documentation if you are curious.

### Building with a build script
If you use Linux, including "Windows Subsystem Linux", you can build the project by running ``build.sh`` which will automatically compile the SCAD files into STLs (for the printed parts) and a DXF file (for the plates).

### Building in OpenSCAD
Alternatively, you can just open the SCAD files directly in OpenSCAD, and compile STL or other files from there.

### Working on the documentation
The documentation contains a lot of images, which don't work nicely in ``git``.  We use "Large File Storage" to manage the images - you can set this up by following Github's [guide to LFS].  If it's already on your system, you can just run ``git lfs install`` to enable it for the repository.

[OpenSCAD]: https://openscad.org/
[submodules]: https://git-scm.com/book/en/v2/Git-Tools-Submodules
[guide to LFS]: https://help.github.com/en/github/managing-large-files/installing-git-large-file-storage
