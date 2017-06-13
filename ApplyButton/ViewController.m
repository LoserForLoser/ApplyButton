//
//  ViewController.m
//  ApplyButton
//
//  Created by 宋朝阳 on 2017/6/12.
//  Copyright © 2017年 Song. All rights reserved.
//

#define SCREEN_FRAME ([UIScreen mainScreen].applicationFrame)

#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)

#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)

#define viewWidthFrame(size) (size * SCREEN_WIDTH / 750)

#define viewHeightFrame(size) (size * SCREEN_HEIGHT / 1334)

#import "ViewController.h"
#import "ApplyButton.h"

@interface ViewController ()

@property (strong, nonatomic) ApplyButton *applyBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    __weak ViewController *weakSelf = self;
    
    self.applyBtn = [ApplyButton
                     
                     buttonWithType:UIButtonTypeCustom
                     
                     frame:CGRectMake((SCREEN_WIDTH - viewHeightFrame(300)) / 2, viewHeightFrame(250), viewHeightFrame(300), viewHeightFrame(80))
                     
                     titleColor:[UIColor whiteColor]
                     
                     titleFont:14
                     
                     backgroundColor:[UIColor colorWithRed:0 green:168/255.0 blue:1 alpha:1]];
    
    [self.view addSubview:self.applyBtn];
    
    [self.applyBtn requestApply:^{
        
        [weakSelf netWorkingRequest];
        
    }];
}
/**
 网络请求验证码
 Network request validation code
 */

- (void) netWorkingRequest {
    
    NSLog(@"请求验证码");
    
    NSLog(@"Request validation code");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
