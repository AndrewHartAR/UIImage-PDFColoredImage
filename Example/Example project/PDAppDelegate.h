//
//  PDAppDelegate.h
//  PDPDFColoredImage
//
//  Created by Andrew Hart on 29/06/2013.
//  Copyright (c) 2013 Project Dent. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PDViewController;

@interface PDAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) PDViewController *viewController;

@end
