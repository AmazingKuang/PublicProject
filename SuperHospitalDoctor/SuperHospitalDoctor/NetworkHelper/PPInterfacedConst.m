//
//  PPInterfacedConst.m
//  SuperHospitalDoctor
//
//  Created by khj on 2020/11/27.
//

#import "PPInterfacedConst.h"

#if DevelopSever
/** 接口前缀-开发服务器*/
NSString *const kApiPrefix = @"http://121.201.85.21:8765";
NSString *const kUserApiPrefix = @"http://121.201.85.21:8765";
NSString *const MQTTHost = @"121.201.85.21";
const uint16_t KMQTTPort = 18830;

#elif TestSever
/** 接口前缀-测试服务器*/
NSString *const kApiPrefix = @"http://121.201.85.21:8765";
NSString *const kUserApiPrefix = @"http://121.201.85.21:8765";
NSString *const MQTTHost = @"121.201.85.21";
const uint16_t KMQTTPort = 18830;
#elif ProductSever
/** 接口前缀-生产服务器*/
NSString *const kApiPrefix = @"http://www.beeneng.cn:8765";
NSString *const kUserApiPrefix = @"http://www.beeneng.cn:8765";
NSString *const MQTTHost = @"www.beeneng.cn";
const uint16_t KMQTTPort = 1883;

#endif
