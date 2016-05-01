//
//  Courses.h
//  natLangMockup
//
//  Created by Mariah Flaim on 5/1/16.
//  Copyright © 2016 Mariah Flaim. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Courses : NSObject
@property NSDictionary* dictCourses;
-(instancetype) initWithDictionary: (NSDictionary*) dict;
-(NSDictionary*) getAssignmentsForCourse: (NSString*)courseID;
@end
