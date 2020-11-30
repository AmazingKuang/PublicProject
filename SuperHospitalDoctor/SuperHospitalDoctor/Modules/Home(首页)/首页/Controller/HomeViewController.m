//
//  HomeViewController.m
//  SuperHospitalDoctor
//
//  Created by khj on 2020/11/27.
//

#import "HomeViewController.h"
#import "FirstViewController.h"
@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.hidden = YES;
    UIButton *but = [UIButton buttonWithType:(UIButtonTypeCustom)];
    but.frame = CGRectMake(20, 100, 100, 44);
    but.backgroundColor = [UIColor greenColor];
    [but setTitleColor:[UIColor whiteColor] forState:(UIControlStateNormal)];
    [but setTitle:@"点击" forState:(UIControlStateNormal)];
    [but addTarget:self action:@selector(didClickedButton) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:but];
}
- (void)didClickedButton {
    [self.navigationController pushViewController:[FirstViewController new] animated:YES];
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
