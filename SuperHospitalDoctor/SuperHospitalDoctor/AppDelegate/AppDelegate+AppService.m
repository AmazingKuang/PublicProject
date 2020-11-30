//
//  AppDelegate+AppService.m
//  SuperHospitalDoctor
//
//  Created by khj on 2020/11/30.
//

#import "AppDelegate+AppService.h"

@implementation AppDelegate (AppService)

+ (AppDelegate *)shareAppDelegate{
    return (AppDelegate *)[[UIApplication sharedApplication] delegate];
}

#pragma mark ————— 初始化window —————
-(void)initWindow{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
}
@end
