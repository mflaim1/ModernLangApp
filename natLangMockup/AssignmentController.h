//
//  AssignmentController.h
//  natLangMockup
//
//  Created by Mariah Flaim on 2/25/16.
//  Copyright © 2016 Mariah Flaim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CLWeeklyCalendarView.h"
@interface AssignmentController : UIViewController<CLWeeklyCalendarViewDelegate ,UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView *assignmentTableView;
//@property (weak, nonatomic) IBOutlet UIView *topView;

@property (nonatomic, strong) CLWeeklyCalendarView* calendarView;
@property NSArray* imageArray;
@property NSArray *assignmentArray;
@property NSArray* dueDateArray;

@end
