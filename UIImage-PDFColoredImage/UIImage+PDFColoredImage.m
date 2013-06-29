//
//  UIImage+PDFColoredImage.m
//  Alarm
//
//  Created by Andrew Hart on 24/04/2013.
//  Copyright (c) 2013 Andrew Hart. All rights reserved.
//

#import "UIImage+PDFColoredImage.h"
#import "UIImage+PDF.h"
#import "UIImage+OverlayColor.h"
#import "PDFView.h"

@implementation UIImage (PDFColoredImage)

+(UIImage *)imageWithPDFNamed:(NSString *)pdfName fitSize:(CGSize)size withFillColor:(UIColor *)fillColor {
    
    if ([pdfName isEqualToString:@""]) {
        return nil;
    }
    
    UIImage *image = [UIImage imageWithPDFNamed:pdfName fitSize:size];
    
    UIImage *colorImage = [image imageWithOverlayColor:fillColor];
    
    return colorImage;
}

@end
