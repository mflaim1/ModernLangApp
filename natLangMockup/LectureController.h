//
//  LectureController.h
//  natLangMockup
//
//  Created by Mariah Flaim on 2/25/16.
//  Copyright © 2016 Mariah Flaim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CLWeeklyCalendarView.h"
static CGFloat CALENDER_VIEW_HEIGHT = 150.f;
@interface LectureController : UIViewController<CLWeeklyCalendarViewDelegate ,UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *lectureTableView;
@property (nonatomic, strong) CLWeeklyCalendarView* calendarView;
@property NSArray* imageArray;
@property NSArray *assignmentArray;
@property NSArray* dueDateArray;
@end
