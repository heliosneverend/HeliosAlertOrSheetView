//
//  HeliosSheetView.h
//  HeliosAlertBlock
//
//  Created by beyo-zhaoyf on 2017/7/20.
//  Copyright © 2017年 beyo-zhaoyf. All rights reserved.
//

#import <UIKit/UIKit.h>
@class HeliosSheetView;

typedef void (^TouchBlock)(NSInteger row);

@interface HeliosSheetView : UIActionSheet <UIActionSheetDelegate>
@property(nonatomic,copy) TouchBlock block;
//需要自定义初始化方法，调用Block
- (id)initWithTitle:(NSString *)title
  cancelButtonTitle:(NSString *)cancelButtonTitle
   firstButtonTitle:(NSString*)firstButtonTitle
  secodeButtonTitle:(NSString *)secodeButtonTitle
              block:(TouchBlock)block;
@end
