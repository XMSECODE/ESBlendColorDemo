//
//  UIImage+Tint.m
//  ESBlendColorDemo
//
//  Created by xiang on 2017/6/26.
//  Copyright © 2017年 xiang. All rights reserved.
//

#import "UIImage+Tint.h"

@implementation UIImage (Tint)


#pragma mark - Public
- (UIImage *)esCGBlendModeDestinationInTintColor:(UIColor *)tintColor {
    return  [self imageWithTintColor:tintColor blendMode:kCGBlendModeDestinationIn];
}

- (UIImage *)esCGBlendModeDestinationOutTintColor:(UIColor *)tintColor {
    return [self imageWithTintColor:tintColor blendMode:kCGBlendModeDestinationOut];
}

- (UIImage *)esCGBlendModeOverlayTintColor:(UIColor *)tintColor {
    return [self imageWithTintColor:tintColor blendMode:kCGBlendModeOverlay];
}

#pragma mark - Private
- (UIImage *)imageWithTintColor:(UIColor *)tintColor blendMode:(CGBlendMode)blendMode {
    
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0.0);
    
    [tintColor setFill];
    
    CGRect bounds = CGRectMake(0, 0, self.size.width, self.size.height);
    UIRectFill(bounds);
    
    [self drawInRect:bounds blendMode:blendMode alpha:1.0];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return image;
}

@end
