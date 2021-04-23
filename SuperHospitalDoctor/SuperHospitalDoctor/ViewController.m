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
    
    [self createBottomView];

}

#pragma mark -- 创建底部视图
- (void)createBottomView {
    UIView *bottomView = [[UIView alloc] initWithFrame:CGRectMake(0,  70, 100, 70)];
    [self.view addSubview:bottomView];
    
    UIButton *bottomButton = [UIButton buttonWithType:(UIButtonTypeSystem)];
    bottomButton.frame = CGRectMake(40, 10, 80, 44);
    [bottomButton setTitle:@"新建收货地址" forState:(UIControlStateNormal)];
    bottomButton.layer.cornerRadius = 22;
    bottomButton.backgroundColor = [UIColor redColor];
    [bottomButton setTitleColor:[UIColor brownColor] forState:(UIControlStateNormal)];
    [bottomView addSubview:bottomButton];
}
@end
