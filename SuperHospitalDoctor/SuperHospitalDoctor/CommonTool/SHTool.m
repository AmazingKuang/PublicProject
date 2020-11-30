//
//  SHTool.m
//  SuperHospitalDoctor
//
//  Created by khj on 2020/11/30.
//

#import "SHTool.h"

@implementation SHTool

#pragma mark 清空字符串中的空白字符
+ (NSString *)trimString:(NSString *)string
{
    return [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

#pragma mark -- 隐藏手机号
+ (NSString *)hidePhoneString:(NSString *)phoneString
{
    return [phoneString stringByReplacingCharactersInRange:NSMakeRange(3, 4) withString:@"****"];
}

#pragma mark -- 空字符串判断
+ (BOOL)isBlankString:(NSString *)string {
    
    if (!string) {
        return YES;
    }
    if (!string.length) {
        return YES;
    }
    if([string isEqualToString:@"(null)"]){
        return  YES;
    }
    if([string isEqualToString:@"<null>"]){
        return  YES;
    }
    if (string == nil || string == NULL) {
        return YES;
    }
    if ([string isKindOfClass:[NSNull class]]) {
        return YES;
    }
    if ([[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length] == 0) {
        return YES;
    }
    return NO;
}
#pragma mark -- 计算字符串高度
+ (CGFloat)getHeightByWidth:(CGFloat)width title:(NSString *)title font:(UIFont *)font
{
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, width, 0)];
    label.text = title;
    label.font = font;
    label.numberOfLines = 0;
    [label sizeToFit];
    CGFloat height = label.frame.size.height;
    return height;
}

#pragma mark -- 计算字符串宽度
+ (CGFloat)getWidthWithTitle:(NSString *)title font:(UIFont *)font {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 1000, 0)];
    label.text = title;
    label.font = font;
    [label sizeToFit];
    return label.frame.size.width;
}

#pragma mark -- 判断数组为空
+ (BOOL)isBlankArr:(NSArray *)arr {

   if (!arr) {

       return YES;

   }

   if ([arr isKindOfClass:[NSNull class]]) {

       return YES;

   }

 if (![arr isKindOfClass:[NSArray class]]) {

       return YES;

   }

   if (!arr.count) {

       return YES;

   }

   if (arr == nil) {

       return YES;

   }

   if (arr == NULL) {

       return YES;

   }

   return NO;

}

#pragma mark -- 判断字典为空
+ (BOOL)isBlankDictionary:(NSDictionary *)dic {

    if (!dic) {

        return YES;

    }

    if ([dic isKindOfClass:[NSNull class]]) {

        return YES;

    }

   if (![dic isKindOfClass:[NSDictionary class]]) {

        return YES;

    }

    if (!dic.count) {

        return YES;

    }

    if (dic == nil) {

        return YES;

    }

    if (dic == NULL) {

        return YES;

    }

    return NO;

}

#pragma mark - 返回NSString部分
+ (NSString *)dateToString:(NSDate *)date dateFormatter:(NSString *)formatter {
    NSDateFormatter *dateFormatter = [[self class] setDateFormatter:formatter];
    NSString *dateString = [dateFormatter stringFromDate:date];
    return dateString;
}
//内部方法、也可以自己暴露
+ (NSDateFormatter *)setDateFormatter:(NSString *)formatter {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:formatter];
    //这条很重要，不加的话。手机设置选择外国可能就会返回中文
    [dateFormatter setLocale:[NSLocale currentLocale]];
    return dateFormatter;
}

#pragma mark - 根据前后NSDate，获取中间差了多少天
+ (NSInteger)daysBetweenStartDate:(NSDate *)startDate endDate:(NSDate *)endDate {
    NSDateComponents *startComponents = [[self class] components:startDate];
    NSDateComponents *endComponents = [[self class] components:endDate];
    
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitDay fromDateComponents:startComponents toDateComponents:endComponents options:nil];
    
    return components.day;
}
+ (NSDateComponents *)components:(NSDate *)date {
    NSDateFormatter *dateFormatter = [[self class] setDateFormatter:@"yyyy-MM-dd"];
    NSString *dateString = [[self class] timeIntervalToString:date.timeIntervalSince1970 dateFormatter:dateFormatter.dateFormat];
    NSDate *startDate = [dateFormatter dateFromString:dateString];
    NSDateComponents *components = [[NSCalendar currentCalendar] components:(NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond | kCFCalendarUnitWeekday | kCFCalendarUnitWeekdayOrdinal) fromDate:startDate];
    
    return components;
}

+ (NSString *)timeIntervalToString:(NSTimeInterval)timeInterval dateFormatter:(NSString *)formatter {
    NSDateFormatter *dateFormatter = [[self class] setDateFormatter:formatter];
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timeInterval];
    NSString *dateString = [dateFormatter stringFromDate:date];
    return dateString;
}


#pragma mark -  通过时间戳计算时间差（几小时前、几天前

+ (NSString *) compareCurrentTime:(NSTimeInterval) compareDate
{
    NSDate *confromTimesp        = [NSDate dateWithTimeIntervalSince1970:compareDate/1000];
    
    NSTimeInterval  timeInterval = [confromTimesp timeIntervalSinceNow];
    timeInterval = -timeInterval;
    long temp = 0;
    NSString *result;
    
    NSCalendar *calendar     = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSInteger unitFlags      = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitWeekday |
    NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    NSDateComponents*referenceComponents=[calendar components:unitFlags fromDate:confromTimesp];
    //    NSInteger referenceYear  =referenceComponents.year;
    //    NSInteger referenceMonth =referenceComponents.month;
    //    NSInteger referenceDay   =referenceComponents.day;
    NSInteger referenceHour  =referenceComponents.hour;
    //    NSInteger referemceMinute=referenceComponents.minute;
    
    if (timeInterval < 60) {
        result = [NSString stringWithFormat:@"刚刚"];
    }
    else if((temp= timeInterval/60) < 60){
        result = [NSString stringWithFormat:@"%ld分钟前",temp];
    }
    
    else if((temp = timeInterval/3600) <24){
        result = [NSString stringWithFormat:@"%ld小时前",temp];
    }
    else if ((temp = timeInterval/3600/24)==1)
    {
        result = [NSString stringWithFormat:@"昨天%ld时",(long)referenceHour];
    }
    else if ((temp = timeInterval/3600/24)==2)
    {
        result = [NSString stringWithFormat:@"前天%ld时",(long)referenceHour];
    }
    
    else if((temp = timeInterval/3600/24) <31){
        result = [NSString stringWithFormat:@"%ld天前",temp];
    }
    
    else if((temp = timeInterval/3600/24/30) <12){
        result = [NSString stringWithFormat:@"%ld个月前",temp];
    }
    else{
        temp = temp/12;
        result = [NSString stringWithFormat:@"%ld年前",temp];
    }
    
    return  result;
}

#pragma mark - 关键字高亮
+ (NSMutableAttributedString *)setAttributedTotalText:(NSString *)totalString selectString:(NSString *)str defaultColor:(UIColor *)color Font:(CGFloat)font{
    // 创建Attributed
    NSMutableAttributedString *attributedText = [[NSMutableAttributedString alloc] initWithString:totalString];
    // 需要改变的区间
    NSRange rangeRmb= [totalString rangeOfString:str];
    // 改变文字大小
    [attributedText setAttributes:@{NSForegroundColorAttributeName:color,NSFontAttributeName:[UIFont systemFontOfSize:font]} range:rangeRmb];
    // 为label添加Attributed
//    [self.refundLabel setAttributedText:attributedText];
    return attributedText;
    
}
#pragma mark - 获取版本信息(V110）
+ (NSString *)getVersionNumber{
    NSString *VString = [self appVersion];
    NSString *replaceString = [VString stringByReplacingOccurrencesOfString:@"." withString:@""];
    NSString *str =  [NSString stringWithFormat:@"v%@",replaceString];
    return str;
}
+ (NSString *)appVersion{
    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
    //app名称
//    NSString *app_Name = [infoDictionary objectForKey:@"CFBundleDisplayName"];
    // app版本
    NSString *app_Version = [infoDictionary objectForKey:@"CFBundleShortVersionString"];
    return app_Version;
}

#pragma mark - 得到带入时间是星期几
+ (NSString *)getWeekStringByDate:(NSDate *)date isEnglish:(BOOL)enable
{
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSInteger unitFlags = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitWeekday |
    NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    NSDateComponents *comps = [calendar components:unitFlags fromDate:date];
    
    NSString *weekString;
    if (enable) {
        weekString = [self getWeekStringBy:[comps weekday] isShort:YES];
    } else {
        weekString = [self getChineseWeekStringBy:[comps weekday]];
    }
    
    return weekString;
}
#pragma mark - 得到周几 英文
+ (NSString *)getWeekStringBy:(NSInteger)week isShort:(BOOL)isShort
{
    NSString *weekString;
    switch (week) {
        case 1:
            weekString = isShort?@"Sun.":@"Sunday";
            break;
        case 2:
            weekString = isShort?@"Mon.":@"Monday";
            break;
        case 3:
            weekString = isShort?@"Tue.":@"Tuesday";
            break;
        case 4:
            weekString = isShort?@"Wed.":@"Wednesday";
            break;
        case 5:
            weekString = isShort?@"Thu.":@"Thursday";
            break;
        case 6:
            weekString = isShort?@"Fri.":@"Friday";
            break;
        case 7:
            weekString = isShort?@"Sat.":@"Saturday";
            break;
    }
    return weekString;
}

#pragma mark - 得到周几 中文
+ (NSString *)getChineseWeekStringBy:(NSInteger)week {
    NSString *weekString;
    switch (week) {
        case 1:
            weekString = @"周日";
            break;
        case 2:
            weekString = @"星期一";
            break;
        case 3:
            weekString = @"星期二";
            break;
        case 4:
            weekString = @"星期三";
            break;
        case 5:
            weekString = @"星期四";
            break;
        case 6:
            weekString = @"星期五";
            break;
        case 7:
            weekString = @"星期六";
            break;
    }
    return weekString;
}



@end
