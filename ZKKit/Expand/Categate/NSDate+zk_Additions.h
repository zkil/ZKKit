//
//  NSDate+zk_Additions.h
//  ZKKit
//
//  Created by pang on 2017/7/24.
//  Copyright © 2017年 zk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (zk_NSString)

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
