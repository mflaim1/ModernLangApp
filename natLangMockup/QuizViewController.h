//
//  QuizViewController.h
//  natLangMockup
//
//  Created by Mariah Flaim on 4/10/16.
//  Copyright © 2016 Mariah Flaim. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *quizTableView;
@property NSArray* questionArray;
@property NSDictionary* answerArray;

@end
