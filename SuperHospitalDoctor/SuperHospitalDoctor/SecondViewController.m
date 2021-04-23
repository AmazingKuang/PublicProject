//
//  SecondViewController.m
//  SuperHospitalDoctor
//
//  Created by khj on 2020/11/27.
//

#import "SecondViewController.h"
#import "RTRootNavigationController.h"
#import "UIViewController+RTRootNavigationController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"第二页";
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor redColor]};
//    self.rt_navigationController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"好" style:(UIBarButtonItemStylePlain) target:self action:@selector(did)];
//    self.rt_navigationController.useSystemBackBarButtonItem = NO;
    UIButton *but = [UIButton buttonWithType:(UIButtonTypeCustom)];
    but.frame = CGRectMake(20, 100, 100, 44);
    but.backgroundColor = [UIColor greenColor];
    [but setTitleColor:[UIColor whiteColor] forState:(UIControlStateNormal)];
    [but setTitle:@"点击" forState:(UIControlStateNormal)];
    [but addTarget:self action:@selector(didClickedButton) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:but];
}
- (UIBarButtonItem *)rt_customBackItemWithTarget:(id)target action:(SEL)action {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
//    [btn setTitle:@"       \n       " forState:UIControlStateNormal];
//    [btn setImage:[UIImage imageNamed:@"navigation_back"] forState:UIControlStateNormal];
    [btn setTitle:@"哈哈" forState:(UIControlStateNormal)];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn sizeToFit];
    [btn addTarget:self action:@selector(did) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:btn];
    return item;
}

- (void)did {
    [self.navigationController popViewControllerAnimated:YES];
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
