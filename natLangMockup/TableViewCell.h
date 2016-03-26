//
//  TableViewCell.h
//  natLangMockup
//
//  Created by Mariah Flaim on 2/26/16.
//  Copyright © 2016 Mariah Flaim. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *dueDate;

@property (weak, nonatomic) IBOutlet UILabel *assignmentName;
@property (weak, nonatomic) IBOutlet UIImageView *cellImageView;
@end
