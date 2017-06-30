//
//  NSDate+zk_Additons.h
//  ZKKit
//
//  Created by pang on 2017/6/30.
//  Copyright © 2017年 zk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (zk_Time)

#pragma -mark- 字符串
/**
 获取数字时间字符串

 @return 数字时间 如20170630102030
 */
- (NSString *)stringTimeNumber;

/**
 获取一定格式的时间字符串

 @param format 时间格式

 @return 一定格式的字符串
 */
- (NSString *)stringWithDateFormat:(NSString *)format;


/**
 获取阳历时间组件

 @return 阳历的时间组件
 */
- (NSDateComponents *)dateComponents;

/**
 获取日期组件
 @param ident 日历类型 如：NSCalendarIdentifierGregorian 阳历

 @return 日期组件
 */
- (NSDateComponents *)dateComponentsWithCalendarIdentifier:(NSCalendarIdentifier)ident;

@end

@interface NSString (zk_Time)


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
