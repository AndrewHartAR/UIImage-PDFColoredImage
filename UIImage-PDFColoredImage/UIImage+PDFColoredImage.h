//
//  UIImage+PDFColoredImage.h
//  Alarm
//
//  Created by Andrew Hart on 24/04/2013.
//  Copyright (c) 2013 Andrew Hart. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (PDFColoredImage)

+(UIImage *)imageWithPDFNamed:(NSString *)pdfName fitSize:(CGSize)size withFillColor:(UIColor *)fillColor;
+(UIImage *)imageWithPDFURL:(NSURL *)url fitSize:(CGSize)size withFillColor:(UIColor *)fillColor;

@end
