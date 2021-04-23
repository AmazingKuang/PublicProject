//
//  ViewController.m
//  SuperHospitalDoctor
//
//  Created by khj on 2020/11/25.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    //测试git
    UIButton *but = [UIButton buttonWithType:(UIButtonTypeCustom)];
    but.frame = CGRectMake(20, 100, 100, 44);
    but.backgroundColor = [UIColor greenColor];
    [but setTitleColor:[UIColor whiteColor] forState:(UIControlStateNormal)];
    [but setTitle:@"点击" forState:(UIControlStateNormal)];
    [but addTarget:self action:@selector(didClickedButton) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:but];
    //测试合并分支

}


@end
