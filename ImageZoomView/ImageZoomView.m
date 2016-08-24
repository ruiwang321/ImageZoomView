//
//  ImageZoomView.m
//  ICinema
//
//  Created by ruiwang on 16/8/23.
//  Copyright © 2016年 ruiwang. All rights reserved.
//

#import "ImageZoomView.h"

@implementation ImageZoomView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        initFrame = frame;
        self.userInteractionEnabled = YES;
        self.contentMode = UIViewContentModeScaleAspectFit;
        self.backgroundColor = [UIColor blackColor];
    }
    return self;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [UIView animateWithDuration:0.4 animations:^{
        self.frame = initFrame;
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
}

+ (void)zoomImageWhenTap:(UIImageView *)imageView {
    imageView.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleFingerEvent:)];
    [imageView addGestureRecognizer:tapGesture];
}

#pragma mark - 点击手势
+ (void)handleSingleFingerEvent:(UITapGestureRecognizer *)tapGesture {
    UIWindow *myWindow = [[UIApplication sharedApplication] keyWindow];
    CGRect fromRect = [tapGesture.view.superview convertRect:tapGesture.view.frame toView:myWindow];
    ImageZoomView *zoomView = [[ImageZoomView alloc] initWithFrame:fromRect];
    zoomView.image = [(UIImageView *)tapGesture.view image];
    [myWindow addSubview:zoomView];
    [UIView animateWithDuration:0.4 animations:^{
        zoomView.frame = myWindow.frame;
    }];
}

- (void)dealloc {
    
}
@end
