//
//  UserTool.m
//  SuperHospitalDoctor
//
//  Created by khj on 2020/11/27.
//

#import "UserTool.h"

@implementation UserTool

+ (void)saveUserInfo:(UserModel *)userModel {
    NSData *userData = [NSKeyedArchiver archivedDataWithRootObject:userModel];
    [[NSUserDefaults standardUserDefaults] setObject:userData forKey:@"UserModelKey"];
    [[NSUserDefaults standardUserDefaults]  synchronize];
}

+ (UserModel *)getUserInfo {
    NSData *userData = [[NSUserDefaults standardUserDefaults] objectForKey:@"UserModelKey"];
    return [NSKeyedUnarchiver unarchiveObjectWithData:userData];
}

+(void)setFirstStart {
    [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"firstStartKey"];
    [[NSUserDefaults standardUserDefaults]  synchronize];
}
+(BOOL)isFirstStart {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"firstStartKey"];
}

@end
