//
//  UserTool.h
//  SuperHospitalDoctor
//
//  Created by khj on 2020/11/27.
//

#import <Foundation/Foundation.h>
#import "UserModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface UserTool : NSObject

/** 存储用户信息 */
+ (void)saveUserInfo:(UserModel *)userModel;

/** 获取用户信息 */
+ (UserModel *)getUserInfo;

/** 存储 第一次打开app */
+(void)setFirstStart;

/** 是否第一次打开app */
+(BOOL)isFirstStart;

@end

NS_ASSUME_NONNULL_END
