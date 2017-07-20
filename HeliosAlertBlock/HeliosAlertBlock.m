//
//  HeliosAlertBlock.m
//  HeliosAlertBlock
//
//  Created by beyo-zhaoyf on 2017/7/20.
//  Copyright © 2017年 beyo-zhaoyf. All rights reserved.
//

#import "HeliosAlertBlock.h"

@implementation HeliosAlertBlock

- (id)initWithTitle:(NSString *)title
            message:(NSString *)message
  cancelButtonTitle:(NSString *)cancelButtonTitle
  otherButtonTitles:(NSString*)otherButtonTitles
              block:(TouchBlock)block {
    __weak HeliosAlertBlock *weakSelf = self;
    self = [super initWithTitle:title message:message delegate:self cancelButtonTitle:cancelButtonTitle otherButtonTitles:otherButtonTitles, nil];
    if(self){
        weakSelf.block = block;
    }
    return self;
}
#pragma mark alertViewDelegate
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    //这里调用函数指针_block(要传进来的参数);
    self.block(buttonIndex);
}
@end
