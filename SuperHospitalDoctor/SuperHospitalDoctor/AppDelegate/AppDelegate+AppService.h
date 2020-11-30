//
//  AppDelegate+AppService.h
//  SuperHospitalDoctor
//
//  Created by khj on 2020/11/30.
//

#import "AppDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface AppDelegate (AppService)

//单例
+ (AppDelegate *)shareAppDelegate;

//初始化 window
-(void)initWindow;


@end

NS_ASSUME_NONNULL_END
