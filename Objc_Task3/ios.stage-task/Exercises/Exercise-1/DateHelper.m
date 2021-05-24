#import "DateHelper.h"

@implementation DateHelper

#pragma mark - First

-(NSString *)monthNameBy:(NSUInteger)monthNumber {
    
    NSDictionary *month = [[NSDictionary alloc] initWithObjectsAndKeys:@"January", @1, @"February", @2, @"March", @3, @"April", @4, @"May", @5, @"June", @6, @"July", @7, @"August", @8, @"September", @9, @"October", @10, @"November", @11, @"December", @12, nil];
    
    NSNumber *tempNumber = [NSNumber numberWithInt: monthNumber];

    
    return [month objectForKey: tempNumber];
}

#pragma mark - Second

- (long)dayFromDate:(NSString *)date {
    
    
    NSDateFormatter *farmatForDate = [NSDateFormatter new];
    [farmatForDate setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss'Z'"];
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDate *parseredDate = [farmatForDate dateFromString:date];
    
    return [calendar component:NSCalendarUnitDay fromDate:parseredDate];
}

#pragma mark - Third

- (NSString *)getDayName:(NSDate*) date {
    NSDateFormatter  *farmatForDate   = [NSDateFormatter new];
    NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:@"ru"];
    [farmatForDate setLocale:locale];
    [farmatForDate setDateFormat:@"EE"];
    return [farmatForDate stringFromDate:date];
}

#pragma mark - Fourth

- (BOOL)isDateInThisWeek:(NSDate *)date {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSInteger weekFromDate = [calendar component:NSCalendarUnitWeekOfYear fromDate:date];
    
    NSLog(@"%u", weekFromDate);
    
    NSInteger trueWeek = [calendar component:NSCalendarUnitWeekOfYear fromDate:[NSDate now]];
    
    if (weekFromDate == trueWeek) return YES;
    else return NO;
    
}

@end
