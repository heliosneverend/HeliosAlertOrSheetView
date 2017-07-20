//
//  HeliosSheetView.m
//  HeliosAlertBlock
//
//  Created by beyo-zhaoyf on 2017/7/20.
//  Copyright © 2017年 beyo-zhaoyf. All rights reserved.
//

#import "HeliosSheetView.h"

@implementation HeliosSheetView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (id)initWithTitle:(NSString *)title
  cancelButtonTitle:(NSString *)cancelButtonTitle
   firstButtonTitle:(NSString *)firstButtonTitle
  secodeButtonTitle:(NSString *)secodeButtonTitle
              block:(TouchBlock)block{
    
    __weak HeliosSheetView *weakSelf = self;
    
    self = [super initWithTitle:title delegate:self cancelButtonTitle:cancelButtonTitle destructiveButtonTitle:nil otherButtonTitles:firstButtonTitle, secodeButtonTitle, nil];
    if (self) {
        weakSelf.block = block;
    }

    return self;
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    //这里调用函数指针_block(要传进来的参数);
    self.block(buttonIndex);
}

@end
