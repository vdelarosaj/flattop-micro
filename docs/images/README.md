# Images for documentation
The photos in this folder document the assembly of the microscope.  In order to keep file sizes manageable, and ensure compatibility with all the various tools that might need to render the images, I process them with [ImageMagick] before adding them to the project.  The command to use on each new image is:

```
mogrify -auto-orient -resize 1024x1024 your-image.jpg
```
Those JPEG images should not be too big - so I usually just process everything over 1Mb with ``./shrink_big_images.sh``

[ImageMagick]: https://imagemagick.org/index.php