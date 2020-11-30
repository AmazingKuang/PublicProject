//
//  SHTabBarController.m
//  SuperHospitalDoctor
//
//  Created by khj on 2020/11/26.
//

#import "SHTabBarController.h"
#import "HomeViewController.h"
#import "PatientViewController.h"
#import "MyViewController.h"
#import "SHNavgationController.h"
#import "FontAndColorMacros.h"

@interface SHTabBarController ()

@property (nonatomic,strong) NSMutableArray *VCS;//tabbar root VC

@end

@implementation SHTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tabBar.barTintColor = [UIColor whiteColor];
    
    //添加子控制器
    [self setUpAllChildViewController];

}

#pragma mark - ——————— 初始化VC ————————
- (void)setUpAllChildViewController {
    
    _VCS = @[].mutableCopy;
    
    HomeViewController *homeVC = [[HomeViewController alloc] init];
    [self setupChildViewController:homeVC title:@"首页" imageName:@"tabbar_wallet_noSelect" seleceImageName:@"tabbar_wallet_select"];
    
    PatientViewController *areaVC = [[PatientViewController alloc] init];
    [self setupChildViewController:areaVC title:@"患者" imageName:@"tabbar_yibao_noSelect" seleceImageName:@"tabbar_yibao_select"];
    
    
    MyViewController *mineVC = [[MyViewController alloc] init];
    [self setupChildViewController:mineVC title:@"我的" imageName:@"tabbar_wode_noSelect" seleceImageName:@"tabbar_wode_select"];
    
    self.viewControllers = _VCS;
    self.selectedIndex = 0;
}

- (void)setupChildViewController:(UIViewController*)controller title:(NSString *)title imageName:(NSString *)imageName seleceImageName:(NSString *)selectImageName {
    
    //文字渲染
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[NSForegroundColorAttributeName] = [UIColor colorWithRed:138.0/255.0 green:138.0/255.0 blue:138.0/255.0 alpha:1];
    [controller.tabBarItem setTitleTextAttributes:dict forState:UIControlStateNormal];
    
    //选中的文字渲染
    dict[NSForegroundColorAttributeName] = KMainColor;
    [controller.tabBarItem setTitleTextAttributes:dict forState:UIControlStateSelected];
    
    controller.tabBarItem.title = title;//跟上面一样效果
    controller.tabBarItem.image = [UIImage imageNamed:imageName];
    controller.tabBarItem.selectedImage = [[UIImage imageNamed:selectImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    //包装导航控制器
    SHNavgationController *nav = [[SHNavgationController alloc] initWithRootViewController:controller];
    controller.title = title;
    [_VCS addObject:nav];
}
@end
