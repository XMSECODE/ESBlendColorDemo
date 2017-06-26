//
//  ViewController.m
//  ESBlendColorDemo
//
//  Created by xiang on 2017/6/26.
//  Copyright © 2017年 xiang. All rights reserved.
//

/*
 * note:图片必须带有alpha通道，否则失效。借鉴王巍博客。
 *      The image must have an alpha channel, otherwise there is no effect. Learn from OneV's blog。
 */

#import "ViewController.h"
#import "UIImage+Tint.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property(nonatomic,strong)UIImage* image;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.image = [UIImage imageNamed:@"image"];
}

- (IBAction)didClickRedButton:(id)sender {
    self.imageView.image = [self.image esCGBlendModeOverlayAndCGBlendModeDestinationInTintColor:[UIColor redColor]];
}

- (IBAction)didClickGreenButton:(id)sender {
    self.imageView.image = [self.image esCGBlendModeOverlayAndCGBlendModeDestinationInTintColor:[UIColor greenColor]];
}

- (IBAction)didClickBlueButton:(id)sender {
    self.imageView.image = [self.image esCGBlendModeOverlayAndCGBlendModeDestinationInTintColor:[UIColor blueColor]];
}

- (IBAction)didClickPurpleButton:(id)sender {
    self.imageView.image = [self.image esCGBlendModeOverlayAndCGBlendModeDestinationInTintColor:[UIColor purpleColor]];
}

- (IBAction)didClickOrangeButton:(id)sender {
    self.imageView.image = [self.image esCGBlendModeOverlayAndCGBlendModeDestinationInTintColor:[UIColor orangeColor]];
}

@end
