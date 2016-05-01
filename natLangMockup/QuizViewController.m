//
//  QuizViewController.m
//  natLangMockup
//
//  Created by Mariah Flaim on 4/10/16.
//  Copyright © 2016 Mariah Flaim. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@end

@implementation QuizViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}
-(void)viewWillAppear:(BOOL)animated{
    _questionArray=[NSArray arrayWithObjects:@"Question 1",@"Question2",@"Question 3",@"Question 4" ,@"Question 5",nil];
    self.question1=[NSArray arrayWithObjects:@"Answer 1",@"Answer 2", @"Answer 3",@"Answer 4", nil];
    self.question2=[NSArray arrayWithObjects:@"Answer 1",@"Answer 2", @"Answer 3",@"Answer 4", nil];
   self.question4=[NSArray arrayWithObjects:@"Answer 1",@"Answer 2", @"Answer 3",@"Answer 4", nil];
    self.question5=[NSArray arrayWithObjects:@"Answer 1",@"Answer 2", @"Answer 3",@"Answer 4", nil];
    self.question3=[NSArray arrayWithObjects:@"Answer 1",@"Answer 2", @"Answer 3",@"Answer 4", nil];
       _quizTableView.delegate=self;
    _quizTableView.dataSource=self;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)cancel:(id)sender {
    //go back to previous view
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];

}
- (IBAction)save:(id)sender {
    //TO DO: save their answers to backend so that next time they open their previous answers are saved
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];

}


- (IBAction)selectedSubmitAnswers:(id)sender {
    //TO DO: save and submit answers to teacher
    [self.navigationController popToRootViewControllerAnimated:YES];

}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [self.questionArray count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}
-(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    
    UIView* customView = [[UIView alloc] init];
    UILabel * headerLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    

    headerLabel.numberOfLines = 0;
    headerLabel.lineBreakMode =NSLineBreakByWordWrapping;
    headerLabel.text=self.questionArray[section];
    
    [headerLabel sizeToFit];
    [customView setBackgroundColor:[UIColor colorWithRed:0.64f green:0.68f blue:0.72f alpha:1.0f]];
    [customView addSubview:headerLabel];
    
    return  customView;
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString* cellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
        
    }
    if (indexPath.section==0){
        cell.textLabel.text=self.question1[indexPath.row];
        
    } if (indexPath.section==1){
        cell.textLabel.text=self.question2[indexPath.row];
    } if (indexPath.section==2){
        cell.textLabel.text=self.question3[indexPath.row];
    } if (indexPath.section==3){
        cell.textLabel.text=self.question4[indexPath.row];
    } if (indexPath.section==4){
        cell.textLabel.text=self.question5[indexPath.row];
    }
    UIImage *image =[UIImage imageNamed:@"unchecked"];
    cell.imageView.image =image;
   
   
    return cell;
}

-(NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    if(cell.selectionStyle == UITableViewCellSelectionStyleNone){
        
    }
   return indexPath;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
    UIImage *highlightedImage =[UIImage imageNamed:@"checked"];
    cell.imageView.image =highlightedImage;
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
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
