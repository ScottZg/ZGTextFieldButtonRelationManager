//
//  ViewController.m
//  TestButtonAndTextField
//
//  Created by zhanggui on 2016/11/30.
//  Copyright © 2016年 shuquwangluo. All rights reserved.
//

#import "ViewController.h"
#import "ZGTextFieldButtonRelationManager.h"
@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *firstTextField;
@property (weak, nonatomic) IBOutlet UITextField *secondTextField;
@property (weak, nonatomic) IBOutlet UITextField *thiredTextField;
@property (weak, nonatomic) IBOutlet UIButton *myButton;
@end

@implementation ViewController
- (IBAction)showAction:(id)sender {
    NSLog(@"sdfsdf");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    ZGTextFieldButtonRelationManager *manager = [ZGTextFieldButtonRelationManager shared];
    manager.buttonEnabledColor = [UIColor yellowColor];
    manager.buttonTextEnabledColor = [UIColor blackColor];
    manager.buttonDisabledColor = [UIColor redColor];
    manager.buttonTextDisabledColor = [UIColor whiteColor];
    [manager setButtonStatus:self.myButton byTextFieldArr:@[self.firstTextField,self.secondTextField,self.thiredTextField]];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
