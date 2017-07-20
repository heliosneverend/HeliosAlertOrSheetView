//
//  HeliosAlertBlock.h
//  HeliosAlertBlock
//
//  Created by beyo-zhaoyf on 2017/7/20.
//  Copyright © 2017年 beyo-zhaoyf. All rights reserved.
//

#import <UIKit/UIKit.h>
@class HeliosAlertBlock;
typedef void (^TouchBlock)(NSInteger row);
@interface HeliosAlertBlock : UIAlertView<UIAlertViewDelegate>
@property(nonatomic, copy)TouchBlock block;
/*
 **需要自定义初始化方法，调用Block
 */
- (id)initWithTitle:(NSString *)title
            message:(NSString *)message
  cancelButtonTitle:(NSString *)cancelButtonTitle
  otherButtonTitles:(NSString*)otherButtonTitles
              block:(TouchBlock)block;
@end
