//
//  VDLoadingButton.h
//  VDLoading
//
//  Created by VD on 17/1/10.
//  Copyright © 2017年 VD. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^CallBack)();

@interface VDLoadingButton : UIButton

/**
 初始化VDLoadingButton

 @param frame 按钮的frame
 @param backgroundColor 按钮的背景颜色
 @param title 按钮的文字
 @param titleColor 文字颜色
 @param titleFont 文字字体大小
 @param cornerRadius 按钮圆角半径
 @param clickBlock 按钮点击之后执行的代码块
 @return 初始化完成的VDLoadingButton
 */
+ (instancetype)VDLoadingButtoninitWithFrame:(CGRect)frame andBackgroundColor:(UIColor *)backgroundColor andTitle:(NSString *)title andTitleColor:(UIColor *)titleColor andTitleFont:(UIFont *)titleFont andCornerRadius:(CGFloat)cornerRadius andClickBlock:(CallBack)clickBlock;

/**
 停止VDLoadingButton的动画

 @param callBack 动画停止之后执行的代码块
 */
- (void)stopAnimateAndCallBack:(CallBack)callBack;

@end
