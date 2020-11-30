//
//  PPInterfacedConst.h
//  SuperHospitalDoctor
//
//  Created by khj on 2020/11/27.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
/*
 
 将项目中所有的接口写在这里,方便统一管理,降低耦合
 
 这里通过宏定义来切换你当前的服务器类型,
 将你要切换的服务器类型宏后面置为真(即>0即可),其余为假(置为0)
 如下:现在的状态为测试服务器
 这样做切换方便,不用来回每个网络请求修改请求域名,降低出错事件
 */

#define DevelopSever 0
#define TestSever    0
#define ProductSever 1


/** 接口前缀-开发服务器*/
UIKIT_EXTERN NSString *const kApiPrefix;
UIKIT_EXTERN NSString *const kUserApiPrefix;
UIKIT_EXTERN uint16_t const KMQTTPort;
/** MQTTHost*/
UIKIT_EXTERN NSString *const MQTTHost;
UIKIT_EXTERN const uint16_t KMQTTPort;





NS_ASSUME_NONNULL_END
