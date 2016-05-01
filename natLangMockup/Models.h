//
//  Models.h
//  natLangMockup
//
//  Created by Mariah Flaim on 5/1/16.
//  Copyright © 2016 Mariah Flaim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Courses.h"
@interface Models : NSObject

+ (Models *) sharedModel;//pointer to singleton
@property (readonly, retain) Courses* courses;
-(void) setCoursesWithDictionary:(NSMutableDictionary*)coursesDict;
@end
