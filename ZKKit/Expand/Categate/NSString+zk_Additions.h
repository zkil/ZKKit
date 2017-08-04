//
//  NSDate+zk_Additons.h
//  ZKKit
//
//  Created by pang on 2017/6/30.
//  Copyright © 2017年 zk. All rights reserved.
//

#import <Foundation/Foundation.h>


#pragma -mark- NSDate
@interface NSString (zk_NSDate)


/**
 获取NSDate

 @param format 自身的时间格式

 @return NSDate
 */
- (NSDate *)dateWithFormat:(NSString *)format;


/**
 获取阳历的时间组件

 @param format 日期格式

 @return 阳历日期组件
 */
- (NSDateComponents *)dateComponentsWithFormat:(NSString *)format;

/**
 获取日期组件

 @param format 日期格式
 @param ident  日历类型

 @return 日期组件
 */
- (NSDateComponents *)dateComponentsWithFormat:(NSString *)format calendarIdentifier:(NSCalendarIdentifier)ident;



/**
 将一个时间格式转到另一个时间格式

 @param formFormat 自己的时间格式
 @param toFormat   要转的时间格式

 @return 指定时间格式的字符串
 */

- (NSString *)stringFormFormat:(NSString *)formFormat toFormat:(NSString *)toFormat;

@end

#pragma -mark- UIColor
#import <UIKit/UIKit.h>
@interface NSString (zk_UIColor)

/**
 UIColor 转16进制

 @param color UIColor

 @return 16bit String
 */
+ (NSString *)rgbColorStingWith:(UIColor *)color;
@end



