# ZGTextFieldButtonRelationManager
处理按钮和UITextField的关系，只有所有UITextField都有值的时候按钮才有效
#### 使用方法：
```Objective-C
 ZGTextFieldButtonRelationManager *manager = [ZGTextFieldButtonRelationManager shared];
 manager.buttonEnabledColor = [UIColor yellowColor];
 manager.buttonTextEnabledColor = [UIColor blackColor];
 manager.buttonDisabledColor = [UIColor redColor];
 manager.buttonTextDisabledColor = [UIColor whiteColor];
 [[ZGTextFieldButtonRelationManager shared] setButtonStatus:self.myButton byTextFieldArr:@[self.firstTextField,self.secondTextField,self.thiredTextField]];
```
