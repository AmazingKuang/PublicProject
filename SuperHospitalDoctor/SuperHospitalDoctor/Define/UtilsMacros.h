//
//  UtilsMacros.h
//  SuperHospitalDoctor
//
//  Created by khj on 2020/11/27.
//

#ifndef UtilsMacros_h
#define UtilsMacros_h

// 全局工具类宏定义


//获取系统对象
#define kApplication        [UIApplication sharedApplication]
#define kAppWindow          [UIApplication sharedApplication].delegate.window
#define kAppDelegate        [AppDelegate shareAppDelegate]
#define kRootViewController [UIApplication sharedApplication].delegate.window.rootViewController
#define kUserDefaults       [NSUserDefaults standardUserDefaults]
#define kNotificationCenter [NSNotificationCenter defaultCenter]

//获取屏幕宽高
#define KScreenWidth ([[UIScreen mainScreen] bounds].size.width)
#define KScreenHeight [[UIScreen mainScreen] bounds].size.height
#define kScreen_Bounds [UIScreen mainScreen].bounds

#define Iphone6ScaleWidth KScreenWidth/375.0
#define Iphone6ScaleHeight KScreenHeight/667.0


//View 圆角和加边框
#define ViewBorderRadius(View, Radius, Width, Color)\
\
[View.layer setCornerRadius:(Radius)];\
[View.layer setMasksToBounds:YES];\
[View.layer setBorderWidth:(Width)];\
[View.layer setBorderColor:[Color CGColor]]

// View 圆角
#define ViewRadius(View, Radius)\
\
[View.layer setCornerRadius:(Radius)];\
[View.layer setMasksToBounds:YES]



//-------------------打印日志-------------------------
#ifdef DEBUG
#define NSLog(FORMAT, ...) fprintf(stderr," 控制器:%s 行号:%d 行 输出内容:%s\n",[[[NSString stringWithUTF8String:__FILE__] lastPathComponent] UTF8String],__LINE__, [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String])
#else
#define NSLog(...)
#endif


//拼接字符串
#define KNSStringFormat(format,...) [NSString stringWithFormat:format,##__VA_ARGS__]


//判断是否是刘海屏
#define IPHONE_X \
({BOOL isPhoneX = NO;\
if (@available(iOS 11.0, *)) {\
isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0;\
}\
(isPhoneX);})


// 状态栏和导航栏总高度
#define kNavBarHAbove      (CGFloat)(IPHONE_X?(88):(64))

// TabBar高度
#define kTabBarHeight       (CGFloat)(IPHONE_X?(49+34):(49))



#endif /* UtilsMacros_h */
