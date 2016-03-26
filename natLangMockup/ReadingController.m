//
//  ReadingController.m
//  natLangMockup
//
//  Created by Mariah Flaim on 2/25/16.
//  Copyright © 2016 Mariah Flaim. All rights reserved.
//

#import "ReadingController.h"
#import "TableViewCell.h"
@interface ReadingController ()

@end
static CGFloat CALENDER_VIEW_HEIGHT = 150.f;
@implementation ReadingController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if(!_calendarView){
        _calendarView = [[CLWeeklyCalendarView alloc] initWithFrame:CGRectMake(0, 60, self.view.bounds.size.width,  CALENDER_VIEW_HEIGHT)];
        _calendarView.delegate = self;
    }
    [self.view addSubview:self.calendarView];

   

}
-(void)viewWillAppear:(BOOL)animated{
    self.assignmentArray=[NSArray arrayWithObjects:@"Chapter 1 Section 1",@"Chapter 1 Section 2-3",@"Web Article",@"Web Article 2",nil];
    self.dueDateArray=[NSArray arrayWithObjects:@"Due by Monday",@"Due by Thursday",@"Due by Thursday",@"Due by Friday",nil];
    self.imageArray=[NSArray arrayWithObjects:@"Book-52.png",@"Book-52.png",@"Link-52.png",@"Link-52.png",nil];
    [self loadTable];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)loadTable{
    _readingTableView=[[UITableView alloc]initWithFrame:CGRectMake(0,60+CALENDER_VIEW_HEIGHT,self.view.bounds.size.width, self.view.bounds.size.height-(CALENDER_VIEW_HEIGHT+60)) ];
     _readingTableView.delegate=self;
     _readingTableView.dataSource=self;
    [self.view addSubview:self.readingTableView];
    [self.view addSubview:self.readingTableView];
    
    
}

#pragma mark - CLWeeklyCalendarViewDelegate
-(NSDictionary *)CLCalendarBehaviorAttributes
{
    return @{
             CLCalendarWeekStartDay : @2,                 //Start Day of the week, from 1-7 Mon-Sun -- default 1
             //             CLCalendarDayTitleTextColor : [UIColor yellowColor],
             //             CLCalendarSelectedDatePrintColor : [UIColor greenColor],
             };
}



-(void)dailyCalendarViewDidSelect:(NSDate *)date
{
    //You can do any logic after the view select the date
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.assignmentArray.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString* cellIdentifier = @"cell";
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"TableViewCell" bundle:nil] forCellReuseIdentifier:cellIdentifier];
        cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    }
    
    cell.assignmentName.text=self.assignmentArray[indexPath.row];
    cell.cellImageView.frame = CGRectMake(0,0,10,10);
    
    cell.cellImageView.image=[UIImage imageNamed:self.imageArray[indexPath.row]];
 
    cell.dueDate.text=self.dueDateArray[indexPath.row];
    // Configure the cell...
    
    return cell;
}




/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

/*
 
 /*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
