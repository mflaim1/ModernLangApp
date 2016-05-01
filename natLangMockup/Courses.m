//
//  Courses.m
//  natLangMockup
//
//  Created by Mariah Flaim on 5/1/16.
//  Copyright © 2016 Mariah Flaim. All rights reserved.
//

#import "Courses.h"

@implementation Courses
-(instancetype) initWithDictionary: (NSDictionary*) dict{
    self = [super init];
    if(self){
        self.dictCourses = dict;
        return self;
    }
    return nil;
}

-(NSDictionary*) getAssignmentsForCourse: (NSString*)courseID{
    NSDictionary* course=[self.dictCourses objectForKey:courseID];
    NSDictionary* assignments=[course objectForKey:@"assignments"];
    return assignments;
}


@end
