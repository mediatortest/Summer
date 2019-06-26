//
//  ViewController.m
//  MainProject
//
//  Created by 王海洋 on 2019/6/26.
//  Copyright © 2019 王海洋. All rights reserved.
//

#import "ViewController.h"
#import "AViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 40)];
    [btn setTitle:@"A Section" forState:UIControlStateNormal];
    [btn setTitleColor:UIColor.redColor forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pushA:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    // Do any additional setup after loading the view.
}

- (void) pushA:(UIButton *)btn {
    AViewController *avc = [[AViewController alloc]init];
    [self.navigationController pushViewController:avc animated:true];
}

@end
