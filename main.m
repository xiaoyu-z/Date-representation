//
//  main.m
//  date
//
//  Created by 郑啸宇 on 15/5/5.
//  Copyright (c) 2015年 冰弦鸾笙. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface date: NSObject
@property int year, month,day;
//-(instancetype) initWithDate:(date*)d;
-(void) setDate:(int)a and:(int)b and:(int)c;
-(date*) getDate;
-(void) dateUpdate:(date*)dateU;
-(BOOL) verifyDate;
@end
@implementation date @synthesize year,month,day;
-(date*) getDate{
    return self;
}
-(void) dateUpdate:(date *)dateU{
    year= dateU.year;
    month = dateU.month;
    day = dateU.day;
    //return self;
}
-(void)setDate:(int)a and:(int)b and:(int)c{
    year =a;
    month = b;
    day = c;
}
-(BOOL) verifyDate{
    if(month<0||month>12||day<0||day>31)
        return NO;
    else
        return YES;
}
@end
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        date* Today = [date alloc];
        [Today setDate:2015 and:5 and:5];
        date* Tomorrow = [date alloc];
        Tomorrow = [Today getDate];
        Tomorrow.day = Tomorrow.day+1;
        if([Tomorrow verifyDate])
            NSLog(@"%i,%i,%i",Tomorrow.year,Tomorrow.month,Tomorrow.day);
        [Today dateUpdate:Tomorrow];
            NSLog(@"%i,%i,%i",Today.year,Today.month,Today.day);
    }
    return 0;
}
