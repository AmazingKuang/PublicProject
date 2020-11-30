//
//  FontAndColorMacros.h
//  SuperHospitalDoctor
//
//  Created by khj on 2020/11/27.
//

#ifndef FontAndColorMacros_h
#define FontAndColorMacros_h

//颜色
#define KClearColor [UIColor clearColor]
#define KWhiteColor [UIColor whiteColor]
#define KBlackColor [UIColor blackColor]
#define KGrayColor [UIColor grayColor]
#define KGray2Color [UIColor lightGrayColor]
#define KBlueColor [UIColor blueColor]
#define KRedColor [UIColor redColor]
#define KYellowColor [UIColor yellowColor]
#define KGreenColor [UIColor greenColor]

/*主颜色*/
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
#define UIColorFromRGBA(rgbValue, a) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:a]

#define KMainColor UIColorFromRGB(0x007BFF)




//字体
#define kFont(a) [UIFont systemFontOfSize:(a)]

#define TEXT_SemiBoldFont(s) [UIFont fontWithName:@"PingFangSC-SemiBold" size:s*SizeScale]
#define TEXT_MediumFont(s)  [UIFont fontWithName:@"PingFangSC-Medium" size:s*SizeScale]
#define TEXT_RegularFont(s)  [UIFont fontWithName:@"PingFangSC-Regular" size:s*SizeScale]
#define TEXT_LightFont(s) [UIFont fontWithName:@"PingFangSC-Light" size:s*SizeScale]


#endif /* FontAndColorMacros_h */
