//
//  ZGTextFieldButtonRelationManager.h
//  TestButtonAndTextField
//
//  Created by zhanggui on 16/11/30.
//  Copyright © 2016年 zhanggui. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

/**
 按钮、textField管理类
 */
@interface ZGTextFieldButtonRelationManager : NSObject





+ (instancetype)shared;
/**
 *  设置指定的按钮是否可以点击
 *
 *  @param btn 按钮
 */
- (void)setButtonStatus:(UIButton *)btn byTextFieldArr:(NSArray *)arr;


/**
 按钮可以点击的时候的颜色,默认是blueColor
 */
@property (nonatomic,strong)UIColor *buttonEnabledColor;

/**
 按钮可以点击的时候button的title颜色,//默认是白色
 */
@property (nonatomic,strong)UIColor *buttonTextEnabledColor;

/**
 按钮不可点击的颜色   //默认是lightGrayColor
 */
@property (nonatomic,strong)UIColor *buttonDisabledColor;

/**
 按钮不可点击的时候button的title的颜色,默认是白色
 */
@property (nonatomic,strong)UIColor *buttonTextDisabledColor;

@end
