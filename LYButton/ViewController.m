//
//  ViewController.m
//  LYButton
//
//  Created by truekey on 2018/1/19.
//  Copyright © 2018年 Luyun. All rights reserved.
//

#import "ViewController.h"
#import "LYButton+Extension.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [UIButton block:^(UITouch *touch) {
        NSLog(@"btnClick");
    }];
    btn.backgroundColor = [UIColor redColor];
    btn.frame = CGRectMake(0, 0, 200, 100);
    btn.center = self.view.center;
    [self.view addSubview:btn];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
