//
//  AppDelegate.m
//  SuperHospitalDoctor
//
//  Created by khj on 2020/11/25.
//

#import "AppDelegate.h"
#import "SHTabBarController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    SHTabBarController *vc = [[SHTabBarController alloc] init];
    self.window.rootViewController = vc;

    return YES;
}




@end
