//
//  ApplyButton.h
//  playtext
//
//  Created by 宋朝阳 on 2017/5/11.
//  Copyright © 2017年 song. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ApplyButton : UIButton

@property (nonatomic, copy) BOOL(^returnApplyBlock)();

+ (instancetype)buttonWithType:(UIButtonType)buttonType frame:(CGRect)frame titleColor:(UIColor *)titleColor titleFont:(CGFloat)font backgroundColor:(UIColor *)backgroundColor;

- (void)setReturnApplyBlock:(BOOL (^)())returnApplyBlock;

@end
