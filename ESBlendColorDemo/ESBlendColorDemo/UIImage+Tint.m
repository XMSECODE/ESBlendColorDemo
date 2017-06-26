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

- (UIImage *)esCGBlendModeOverlayAndCGBlendModeDestinationInTintColor:(UIColor *)tintColor {
    return [self imageWithTintColor:tintColor blendModeOne:kCGBlendModeOverlay blendModeTwo:kCGBlendModeDestinationIn];
}

#pragma mark - Private
- (UIImage *)imageWithTintColor:(UIColor *)tintColor blendMode:(CGBlendMode)blendMode {
    return [self imageWithTintColor:tintColor blendModeOne:blendMode blendModeTwo:-1];
}

- (UIImage *)imageWithTintColor:(UIColor *)tintColor blendModeOne:(CGBlendMode)blendModeOne blendModeTwo:(int)blendModeTwo {
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0.0);
    
    [tintColor setFill];
    
    CGRect bounds = CGRectMake(0, 0, self.size.width, self.size.height);
    UIRectFill(bounds);
    
    [self drawInRect:bounds blendMode:blendModeOne alpha:1.0];
    if (blendModeTwo != -1) {
        [self drawInRect:bounds blendMode:blendModeTwo alpha:1.0];
    }
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return image;
    return self;
}

@end
