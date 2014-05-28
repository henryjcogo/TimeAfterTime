#import <Foundation/Foundation.h>
// Modified by Henry Cogo
//
int main (int argc, const char *argv[])
{
    @autoreleasepool {
        
        NSDate *now = [[NSDate alloc] init];
        NSLog(@"The new date lives at %p", now);
        NSLog(@"The date is %@", now);
        NSLog(@"Hello, World!\n");
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has veen %.2f seconds since the start of 1970.", seconds);
        
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"In 100,000 seconds it will be %@.", later);
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSUInteger day = [cal ordinalityOfUnit:NSDayCalendarUnit
                                        inUnit:NSMonthCalendarUnit forDate:now];
        NSLog(@"This is day %lu of the month.", day);
    }
    return 0;
}