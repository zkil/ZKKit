//
//  NSDate+zk_Additons.m
//  ZKKit
//
//  Created by pang on 2017/6/30.
//  Copyright © 2017年 zk. All rights reserved.
//

#import "NSDateNSString+zk_Time.h"

@implementation NSDate (zk_Time)

- (NSString *)stringTimeNumber {
    NSString *timeStr = [NSString stringWithFormat:@"%@",self];
    timeStr = [timeStr stringByReplacingOccurrencesOfString:@" " withString:@""];
    timeStr = [timeStr stringByReplacingOccurrencesOfString:@"-" withString:@""];
    timeStr = [timeStr stringByReplacingOccurrencesOfString:@":" withString:@""];
    timeStr = [timeStr stringByReplacingOccurrencesOfString:@"+" withString:@""];
    
    return timeStr;
}

- (NSString *)stringWithDateFormat:(NSString *)format {
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:format];
    return [dateFormat stringFromDate:self];
}

- (NSDateComponents *)dateComponents {
    return [self dateComponentsWithCalendarIdentifier:NSCalendarIdentifierGregorian];
}

- (NSDateComponents *)dateComponentsWithCalendarIdentifier:(NSCalendarIdentifier)ident {
    NSCalendar *calender = [[NSCalendar alloc]initWithCalendarIdentifier:ident];
    NSDateComponents *dateComponents = [calender components:NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitHour|NSCalendarUnitMinute|NSCalendarUnitWeekOfMonth|NSCalendarUnitWeekday fromDate:self];
    return dateComponents;
}

@end

@implementation NSString (zk_Time)

- (NSDate *)dateWithFormat:(NSString *)format {
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:format];
    return [dateFormat dateFromString:self];
}

- (NSDateComponents *)dateComponentsWithFormat:(NSString *)format {
    return [self dateComponentsWithFormat:format calendarIdentifier:NSCalendarIdentifierGregorian];
}

-(NSDateComponents *)dateComponentsWithFormat:(NSString *)format calendarIdentifier:(NSCalendarIdentifier)ident {
    NSDate *date = [self dateWithFormat:format];
    NSCalendar *calender = [[NSCalendar alloc]initWithCalendarIdentifier:ident];
    NSDateComponents *dateComponents = [calender components:NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitHour|NSCalendarUnitMinute|NSCalendarUnitWeekOfMonth|NSCalendarUnitWeekday fromDate:date];
    return dateComponents;
}

- (NSString *)stringFormFormat:(NSString *)formFormat toFormat:(NSString *)toFormat {
    NSDate *date = [self dateWithFormat:formFormat];
    return [date stringWithDateFormat:toFormat];
}
@end
