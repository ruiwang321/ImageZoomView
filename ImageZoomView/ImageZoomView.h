//
//  ImageZoomView.h
//  ICinema
//
//  Created by ruiwang on 16/8/23.
//  Copyright © 2016年 ruiwang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageZoomView : UIImageView {
    CGRect initFrame;
}
/**
 *  添加imageView点击放大功能
 *
 *  @param imageView 图片视图对象
 */
+ (void)zoomImageWhenTap:(UIImageView *)imageView;
@end
