//
//  FirstViewController.m
//  SuperHospitalDoctor
//
//  Created by khj on 2020/11/27.
//

#import "FirstViewController.h"
#import "RTRootNavigationController.h"
#import "SecondViewController.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIButton *but = [UIButton buttonWithType:(UIButtonTypeCustom)];
    but.frame = CGRectMake(20, 100, 100, 44);
    but.backgroundColor = [UIColor greenColor];
    [but setTitleColor:[UIColor whiteColor] forState:(UIControlStateNormal)];
    [but setTitle:@"点击1234567898765" forState:(UIControlStateNormal)];
    [but addTarget:self action:@selector(didClickedButton) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:but];
}

- (void)didClickedButton {
    [self.navigationController pushViewController:[SecondViewController new] animated:YES];
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
