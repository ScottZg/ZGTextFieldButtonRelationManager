//
//  ZGTextFieldButtonRelationManager.m
//  TestButtonAndTextField
//
//  Created by zhanggui on 16/11/30.
//  Copyright © 2016年 zhanggui. All rights reserved.
//

#import "ZGTextFieldButtonRelationManager.h"



@interface ZGTextFieldButtonRelationManager ()

@property (nonatomic,strong)NSArray *textFieldArr;

@property (nonatomic,strong)UIButton *btn;
@end

@implementation ZGTextFieldButtonRelationManager

+ (instancetype)shared {
    
    static ZGTextFieldButtonRelationManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [ZGTextFieldButtonRelationManager new];
    });
    
    return manager;
}

- (void)setButtonStatus:(UIButton *)btn byTextFieldArr:(NSArray *)arr {
    
    _textFieldArr = arr;
    self.btn = btn;
    [self zg_enumArr];
    [arr enumerateObjectsUsingBlock:^(id   obj, NSUInteger idx, BOOL *  stop) {
        if ([obj isKindOfClass:[UITextField class]]) {
            UITextField *textField = (UITextField *)obj;
            [textField addTarget:self action:@selector(zg_valueChangedAction:) forControlEvents:UIControlEventEditingChanged];
        }
    }];
}
- (void)zg_valueChangedAction:(UITextField *)textField {
        [self zg_enumArr];
}
- (void)zg_enumArr {
    for(UITextField *tf in _textFieldArr) {
        if (!tf.text.length) {
            [self zg_setBtnColorWithBoo:NO];
            return;
        }
    }
    [self zg_setBtnColorWithBoo:YES];
}
#pragma mark - private method

/**
 设置按钮的颜色

 @param boo YES表示设置可点按钮颜色，NO表示不可点按钮的颜色

 */
- (void)zg_setBtnColorWithBoo:(BOOL)boo {
    if (boo) {
        self.btn.backgroundColor = _buttonEnabledColor? _buttonEnabledColor : [UIColor blueColor];
        [self.btn setTitleColor:_buttonTextEnabledColor? _buttonTextEnabledColor:[UIColor whiteColor] forState:UIControlStateNormal];
        self.btn.enabled = YES;
        return ;
    }
    self.btn.backgroundColor = _buttonDisabledColor? _buttonDisabledColor : [UIColor lightGrayColor];
    [self.btn setTitleColor:_buttonTextDisabledColor? _buttonTextDisabledColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.btn.enabled = NO;

    
}
@end
