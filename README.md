


# UIImage-PDFColoredImage
=====================================

UIImage extension for iOS which converts a black PDF image into a UIImage of any size, in any color. One line of code, really simple to use.

### The benefits

**Adjustment**
If you want to adjust the size or color of an icon, you don't have to re-export it, you just change it in the code.

If you want to change the shape of the icon, you don't have to re-export a number of different versions - you export it once and it'll update across all sizes and colors.

**Simplicity**
It simplifies your project and file system by removing the need for multiple versions of the same icon.

**File size**
File size is reduced because you only have the 1 export, which covers every version of the icon.


### Example

Lets say you need an icon in 3 different versions:
1. A blue 100x100 icon.
2. A red 100x100 icon.
3. A red 250x250 icon.

Doing this the old way means exporting this into 3 separate PNG files, plus a @2x version. You now have 6 exported files:

    icon_clock_blue_100.png
    icon_clock_blue_100@2x.png
    icon_clock_red_100.png
    icon_clock_red_100@2x.png
    icon_clock_red_160.png
    icon_clock_red_160@2x.png

Cumulatively (and I've exported these and included them in the project), they're **70kb**. Not a huge deal, but this is just a single icon. Once you have a full project, this really adds up.

Doing this the new way, you export a single PDF file, using black as the icon color. You have 1 exported file:

    icon_clock.pdf

*This works with retina*, it works across all of those colors, and it works at different sizes. And it weighs in at **12kb**. That's an 83% reduction in size.

And it's super simple to use.

### How to use it

1. Create a black icon and export it as a PDF of any size. I hear that Adobe Illustrator has bad PDF export support, and will produce large files. I'd personally recommend using Sketch app, which makes use of the OSX Quartz renderer.

2. Import your icon to your project.

3. Add `QuartzCore.framework` to your project.
Import `"UIImage+PDFColoredImage.h"` into the file where you want to use it. In my personal usage, I put this in the `-Prefix.pch` file, as it's in use across my entire project.

4. Then, when you want to display an image:

    NSString *iconPDFName = @"icon_clock.pdf";
    CGSize size = CGSizeMake(160, 160);
    UIColor *fillColor = [UIColor redColor];
	
    UIImage *image = [UIImage imageWithPDFNamed:iconPDFName
                                        fitSize:size
                                  withFillColor:fillColor];

### Acknowledgements

Created by [@AndrewProjDent](http://twitter.com/AndrewProjDent), for an upcoming app.

The PDF > UIImage conversion is done by use of the fantastic [UIImage-PDF](https://github.com/mindbrix/UIImage-PDF "UIImage-PDF").

### License

UIImage-PDFColoredImage is available under the [MIT license](LICENSE).
