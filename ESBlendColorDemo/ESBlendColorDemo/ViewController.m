//
//  ViewController.m
//  ESBlendColorDemo
//
//  Created by xiang on 2017/6/26.
//  Copyright © 2017年 xiang. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+Tint.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)didClickRedButton:(id)sender {
//    UIImage *image = [UIImage imageNamed:@"test_picture"];
//    UIImage *image = [UIImage imageNamed:@"image"];
    UIImage *image = [UIImage imageNamed:@"image"];
    image = [image esCGBlendModeDestinationInTintColor:[UIColor redColor]];
    self.imageView.image = image;
}

@end
