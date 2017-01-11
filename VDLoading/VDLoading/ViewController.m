//
//  ViewController.m
//  VDLoading
//
//  Created by VD on 17/1/10.
//  Copyright © 2017年 VD. All rights reserved.
//

#import "ViewController.h"
#import "VDLoadingButton.h"

@interface ViewController ()

@property (nonatomic,strong) VDLoadingButton *loginButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.loginButton];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self.loginButton stopAnimateAndCallBack:^{
        
        NSLog(@"VDLoadingButton动画停止了");
    }];
}


- (VDLoadingButton *)loginButton {
    
    if (_loginButton == nil) {
        
        _loginButton = [VDLoadingButton VDLoadingButtoninitWithFrame:CGRectMake(20, 250, [UIScreen mainScreen].bounds.size.width - 40, 50) andBackgroundColor:[UIColor greenColor] andTitle:@"登录" andTitleColor:[UIColor whiteColor] andTitleFont:[UIFont systemFontOfSize:17] andCornerRadius:5 andClickBlock:^{
            
            NSLog(@"VDLoadingButton被点击了");
        }];
    }
    return _loginButton;
}

@end
