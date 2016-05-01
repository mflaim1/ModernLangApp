//
//  Models.m
//  natLangMockup
//
//  Created by Mariah Flaim on 5/1/16.
//  Copyright © 2016 Mariah Flaim. All rights reserved.
//

#import "Models.h"
@interface Models ()
@property (readwrite, retain) Courses* courses;
@end

@implementation Models

+ (Models *)sharedModel{
    static Models* _sharedModel = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedModel = [[self alloc] init];
    });
    
    return _sharedModel;
}
-(void) setCoursesWithDictionary:(NSMutableDictionary*)coursesDict{
    self.courses=[[Courses alloc]initWithDictionary:coursesDict];
    
}




@end
