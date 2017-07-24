//
//  NSDate+zk_Additions.m
//  ZKKit
//
//  Created by pang on 2017/7/24.
//  Copyright © 2017年 zk. All rights reserved.
//

#import "NSDate+zk_Additions.h"

@implementation NSDate (zk_NSString)

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
