//
//  UIImage+Tint.h
//  ESBlendColorDemo
//
//  Created by xiang on 2017/6/26.
//  Copyright © 2017年 xiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Tint)

- (UIImage *)esCGBlendModeDestinationInTintColor:(UIColor *)tintColor;

- (UIImage *)esCGBlendModeDestinationOutTintColor:(UIColor *)tintColor;

- (UIImage *)esCGBlendModeOverlayTintColor:(UIColor *)tintColor;

- (UIImage *)imageWithTintColor:(UIColor *)tintColor blendMode:(CGBlendMode)blendMode;

@end
