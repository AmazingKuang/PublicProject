//
//  BaseResponse.h
//  SuperHospitalDoctor
//
//  Created by khj on 2020/11/27.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

extern NSString *const KeyContent;

@interface BaseResponse : NSObject


@property (nonatomic,getter=isSuccess) BOOL success;
@property (copy, nonatomic) NSString *code;
@property (copy, nonatomic) NSString *message;

@end

NS_ASSUME_NONNULL_END
