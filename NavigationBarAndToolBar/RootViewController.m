//
//  RootViewController.m
//  NavigationBarAndToolBar
//
//  Created by Civet on 2019/5/23.
//  Copyright © 2019年 PandaTest. All rights reserved.
//

#import "RootViewController.h"
#import "SecondViewController.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    //设置导航栏风格颜色
    self.navigationController.navigationBar.barStyle = UIBarStyleDefault;
    self.navigationController.navigationBar.translucent = NO;
    //设置导航栏的颜色
    self.navigationController.navigationBar.barTintColor = [UIColor orangeColor];
    //设置导航元素项目按钮风格颜色
    self.navigationController.navigationBar.tintColor = [UIColor redColor];
    
    //隐藏导航栏
    self.navigationController.navigationBar.hidden = NO;
    self.navigationController.navigationBarHidden = NO;
    
    self.title = @"根视图";
    UIBarButtonItem *btn = [[UIBarButtonItem alloc]initWithTitle:@"右侧" style:UIBarButtonItemStylePlain target:self action:@selector(selector)];
    self.navigationItem.rightBarButtonItem = btn;
    //实现工具栏对象
    //默认工具栏隐藏
    self.navigationController.toolbarHidden = NO;
    self.navigationController.toolbar.translucent= NO;
    
    //创建3个工具栏按钮
    UIBarButtonItem *btn1 = [[UIBarButtonItem alloc] initWithTitle:@"first" style:UIBarButtonItemStylePlain target:nil action:nil];
    UIBarButtonItem *btn2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(pressNext)];
    
    UIButton *btnImage = [UIButton buttonWithType:UIButtonTypeCustom];
    [btnImage setImage:[UIImage imageNamed:@"11.jpg"] forState:UIControlStateNormal];
    btnImage.frame = CGRectMake(0, 0, 60, 60);
    
    UIBarButtonItem *btn3 = [[UIBarButtonItem alloc] initWithCustomView:btnImage];
    //固定宽度占位按钮
    
    UIBarButtonItem *btnF1 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
//    UIBarButtonItem *btnF1 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
//    btnF1.width = self.navigationController.toolbar.bounds.size.width/3;
    NSArray *arrayBtns = [NSArray arrayWithObjects:btn1,btnF1,btn2,btnF1,btn3,nil];
    self.toolbarItems = arrayBtns;
}

- (void)selector{
    
}

- (void)pressNext{
    SecondViewController *secondVC = [[SecondViewController alloc] init];

    [self.navigationController pushViewController:secondVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
