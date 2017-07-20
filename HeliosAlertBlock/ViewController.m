//
//  ViewController.m
//  HeliosAlertBlock
//
//  Created by beyo-zhaoyf on 2017/7/20.
//  Copyright © 2017年 beyo-zhaoyf. All rights reserved.
//

#import "ViewController.h"
#import "HeliosAlertBlock.h"
#import "HeliosSheetView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self makeUI];
}
- (void)makeUI {
    UIButton *alertBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    alertBtn.frame = CGRectMake(100, 100, 100, 50);
    [alertBtn setTitle:@"alert" forState:UIControlStateNormal];
    alertBtn.tag = 2001;
    [alertBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [alertBtn addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:alertBtn];
    
    UIButton *sheetBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    sheetBtn.frame = CGRectMake(100, 300, 100, 50);
    [sheetBtn setTitle:@"sheet" forState:UIControlStateNormal];
    sheetBtn.tag = 2002;
    [sheetBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [sheetBtn addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:sheetBtn];

}
- (void)buttonClick:(UIButton *)button {
    if(button.tag == 2001){
        HeliosAlertBlock *allertview = [[HeliosAlertBlock alloc] initWithTitle:@"提示" message:@"这是AlertView！" cancelButtonTitle:@"确定" otherButtonTitles:nil block:^(NSInteger row) {
            
        }];
        [allertview show];
    }else{
        HeliosSheetView *sheetView = [[HeliosSheetView alloc]initWithTitle:@"提示这是" cancelButtonTitle:@"sheetView" firstButtonTitle:@"确定" secodeButtonTitle:@"取消" block:^(NSInteger row) {
            switch (row) {
                case 0:{
                    NSLog(@"点击了");
                    break;
                }
                case 1:{
                    //取消
                    break;
                }
                default:
                    break;
            }

        }];
        [sheetView showInView:self.view];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
