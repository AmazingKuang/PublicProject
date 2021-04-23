//
//  UserModel.m
//  SuperHospitalDoctor
//
//  Created by khj on 2020/11/27.
//

#import "UserModel.h"
#import "NSObject+MJCoding.h"
@implementation UserModel


//MJCodingImplementation
- (void)encodeWithCoder:(NSCoder *)coder

{

    [coder encodeObject:self.userName forKey:@"userName"];

    [coder encodeObject:self.userId forKey:@"userId"];
    [coder encodeObject:self.nickName forKey:@"nickName"];


    

}

- (nullable instancetype)initWithCoder:(nonnull NSCoder *)coder {

    

    if (self == [super init]) {

        self.userName = [coder decodeObjectForKey:@"userName"];

        self.userId = [coder decodeObjectForKey:@"userId"];
        
        self.nickName = [coder decodeObjectForKey:@"nickName"];


    }

    return self;

}

// 这个需要返回YES

+(BOOL)supportsSecureCoding{

    return YES;

}

@end
