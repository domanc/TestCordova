//
//  ViewController.m
//  TestCordova
//
//  Created by Doman on 2017/7/14.
//  Copyright © 2017年 Doman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    //加载远程html 要放在    [super viewDidLoad]; 前面
//        self.startPage = @"http://www.baidu.com";

    [super viewDidLoad];
    // 这里空出的20，是为了不显示使用导航控制器时，控制背景色来改变状态栏背景色
    self.webView.frame = CGRectMake(0, 20, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame) - 20);
    
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithTitle:@"测试" style:UIBarButtonItemStylePlain target:self action:@selector(testClick)];
    self.navigationItem.rightBarButtonItem = rightItem;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self.navigationController setNavigationBarHidden:YES];
    
}

- (void)testClick
{
    NSString *jsStr = @"asyncAlert('哈哈啊哈')";
    [self.commandDelegate evalJs:jsStr];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
