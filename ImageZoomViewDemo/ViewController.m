//
//  ViewController.m
//  ImageZoomViewDemo
//
//  Created by ruiwang on 16/8/24.
//  Copyright © 2016年 ruiwang. All rights reserved.
//

#import "ViewController.h"
#import "ImageZoomView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    imageView.image = [UIImage imageNamed:@"image.png"];
    
    [self.view addSubview:imageView];
    
/////////////////////////////////////添加点击方法效果//////////////////////////////////////
     
    [ImageZoomView zoomImageWhenTap:imageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
