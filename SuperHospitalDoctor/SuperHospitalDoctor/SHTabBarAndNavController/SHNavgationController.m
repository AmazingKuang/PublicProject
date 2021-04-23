//
//  SHNavgationController.m
//  SuperHospitalDoctor
//
//  Created by khj on 2020/11/27.
//

#import "SHNavgationController.h"

@interface SHNavgationController ()

@end

@implementation SHNavgationController


+ (void)initialize {
    
//    UIImage *bg = [UIImage createImageWithColor:[UIColor colorWithRed:255.0/255.0 green:211.0/255.0 blue:0.0/255.0 alpha:1]];
    
    UINavigationBar *bar = [UINavigationBar appearance];
    bar.barTintColor = [UIColor redColor];
//    [bar setBackgroundImage:bg forBarMetrics:UIBarMetricsDefault];
//    [bar setShadowImage:[[UIImage alloc] init]];
    [bar setTitleTextAttributes:@{NSFontAttributeName : [UIFont boldSystemFontOfSize:17]}];
}

- (void)viewDidLoad {
    [super viewDidLoad];



}
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    if (self.childViewControllers.count > 0) {
        
        viewController.hidesBottomBarWhenPushed = YES;
        
//        self.navigationBar.tintColor = [UIColor redColor];
//
//        [self.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor blackColor],NSForegroundColorAttributeName, nil]];
}
    
    [super pushViewController:viewController animated:animated];
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
