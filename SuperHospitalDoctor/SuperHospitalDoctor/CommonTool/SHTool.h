//
//  SHTool.h
//  SuperHospitalDoctor
//
//  Created by khj on 2020/11/30.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SHTool : NSObject

/**
 *  清空字符串中的空白字符
 */
+ (NSString *)trimString:(NSString *)string;

/**
 *  隐藏手机号中间几位，显示前三位后四位
 */
+ (NSString *)hidePhoneString:(NSString *)phoneString;


/**
 *  是否为空字符串
 */
+ (BOOL)isBlankString:(NSString *)string;

/**
 *  根据字符串宽度和字符串大小计算高度
 */
+ (CGFloat)getHeightByWidth:(CGFloat)width title:(NSString *)title font:(UIFont*)font;

/**
 *  根据字符串和字符串大小计算宽度
 */
+ (CGFloat)getWidthWithTitle:(NSString *)title font:(UIFont *)font;

/**
 *  判断数组为空
 */
+ (BOOL)isBlankArr:(NSArray *)arr;

/**
 *  判断字典为空
 */
+ (BOOL)isBlankDictionary:(NSDictionary *)dic;

/// NSDate转格式显示
/// @param date 例如：[NSDate date]
/// @param formatter @"yyyy-MM-dd"
+ (NSString *)dateToString:(NSDate *)date dateFormatter:(NSString *)formatter;

/// 根据前后NSDate，获取中间差了多少天
/// @param startDate 开始时间
/// @param endDate 结束时间
+ (NSInteger)daysBetweenStartDate:(NSDate *)startDate endDate:(NSDate *)endDate;

/**
 通过时间戳计算时间差（几小时前、几天前

 @param compareDate 毫秒
 @return <#return value description#>
 */
+ (NSString *) compareCurrentTime:(NSTimeInterval) compareDate;


/**
 *  关键字高亮
 */
+ (NSMutableAttributedString *)setAttributedTotalText:(NSString *)totalString selectString:(NSString *)str defaultColor:(UIColor *)color Font:(CGFloat)font;

/**
 * 获取app版本信息(110)
 */
+ (NSString *)appVersion;

/**
 *  获取版本信息(V110）
 */
+ (NSString *)getVersionNumber;

/**
 * 得到周几 英文
 */
+ (NSString *)getWeekStringBy:(NSInteger)week isShort:(BOOL)isShort;

/**
 * 得到周几 中文
 */
+ (NSString *)getChineseWeekStringBy:(NSInteger)week;

/**
 * 得到带入时间是星期几
 */
+ (NSString *)getWeekStringByDate:(NSDate *)date isEnglish:(BOOL)enable;



@end

NS_ASSUME_NONNULL_END
