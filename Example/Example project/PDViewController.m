//
//  PDViewController.m
//  PDPDFColoredImage
//
//  Created by Andrew Hart on 29/06/2013.
//  Copyright (c) 2013 Project Dent. All rights reserved.
//

#import "PDViewController.h"
#import "UIImage+PDFColoredImage.h"

@interface PDViewController ()

@end

@implementation PDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *iconPDFName = @"icon_clock.pdf";
    CGSize size = CGSizeMake(160, 160);
    UIColor *fillColor = [UIColor redColor];
	
    UIImage *image = [UIImage imageWithPDFNamed:iconPDFName
                                         fitSize:size
                                   withFillColor:fillColor];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    imageView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    imageView.contentMode = UIViewContentModeCenter;
    imageView.image = image;
    [self.view addSubview:imageView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
