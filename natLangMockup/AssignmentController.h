//
//  AssignmentController.h
//  natLangMockup
//
//  Created by Mariah Flaim on 2/25/16.
//  Copyright © 2016 Mariah Flaim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CLWeeklyCalendarView.h"
#import "Network.h"
#import "Models.h"
@interface AssignmentController : UIViewController<CLWeeklyCalendarViewDelegate ,UITableViewDelegate,UITableViewDataSource,NetworkDelegate>
@property (nonatomic,strong) UITableView *assignmentTableView;
//@property (weak, nonatomic) IBOutlet UIView *topView;

@property (nonatomic, strong) CLWeeklyCalendarView* calendarView;
@property NSDictionary* assignmentDictionary;
@property NSArray* imageArray;
@property NSMutableArray *assignmentArray;
@property NSArray* dueDateArray;
@property Models* models;
@property Network* network;

@end
