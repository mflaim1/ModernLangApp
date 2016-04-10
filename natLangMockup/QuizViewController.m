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
    _questionArray=[NSArray arrayWithObjects:@"Question 1",@"Question2",@"Question 3",@"Question 4" ,@"Question 5",nil];
    NSArray*question1=[NSArray arrayWithObjects:@"Answer 1",@"Answer 2", @"Answer 3",@"Answer 4", nil];
    NSArray*question2=[NSArray arrayWithObjects:@"Answer 1",@"Answer 2", @"Answer 3",@"Answer 4", nil];
    NSArray*question4=[NSArray arrayWithObjects:@"Answer 1",@"Answer 2", @"Answer 3",@"Answer 4", nil];
    NSArray*question5=[NSArray arrayWithObjects:@"Answer 1",@"Answer 2", @"Answer 3",@"Answer 4", nil];
    NSArray*question3=[NSArray arrayWithObjects:@"Answer 1",@"Answer 2", @"Answer 3",@"Answer 4", nil];
    _answerArray=[NSDictionary dictionaryWithObjectsAndKeys:question1,@"one",question2,@"two",question3,@"three",question4,@"four",question5,@"five", nil];
    _quizTableView.delegate=self;
    _quizTableView.dataSource=self;
    // Do any additional setup after loading the view.
}
-(void)viewWillAppear:(BOOL)animated{
     NSLog(@"hi");
    _questionArray=[NSArray arrayWithObjects:@"Question 1",@"Question2",@"Question 3",@"Question 4" ,@"Question 5",nil];
    NSArray*question1=[NSArray arrayWithObjects:@"Answer 1",@"Answer 2", @"Answer 3",@"Answer 4", nil];
    NSArray*question2=[NSArray arrayWithObjects:@"Answer 1",@"Answer 2", @"Answer 3",@"Answer 4", nil];
    NSArray*question4=[NSArray arrayWithObjects:@"Answer 1",@"Answer 2", @"Answer 3",@"Answer 4", nil];
    NSArray*question5=[NSArray arrayWithObjects:@"Answer 1",@"Answer 2", @"Answer 3",@"Answer 4", nil];
    NSArray*question3=[NSArray arrayWithObjects:@"Answer 1",@"Answer 2", @"Answer 3",@"Answer 4", nil];
    _answerArray=[NSDictionary dictionaryWithObjectsAndKeys:question1,@"one",question2,@"two",question3,@"three",question4,@"four",question5,@"five", nil];
    _quizTableView.delegate=self;
    _quizTableView.dataSource=self;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)cancel:(id)sender {
    //go back to previous view
    NSLog(@"hi");
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];

}
- (IBAction)save:(id)sender {
    //TO DO: save their answers to backend so that next time they open their previous answers are saved
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];

}


- (IBAction)selectedSubmitAnswers:(id)sender {
    //TO DO: save and submit answers to teacher
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];

}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 25;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString* cellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
        
    }
    if(indexPath.row==0||indexPath.row==5||indexPath.row==10||indexPath.row==15||indexPath.row==20){
        cell.imageView.image=nil;
          cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }else{
        cell.selectionStyle = UITableViewCellSelectionStyleDefault;

        cell.imageView.image=[UIImage imageNamed:@"unchecked.png"];
    }
    NSMutableArray *answers=[[NSMutableArray alloc]init];
    if(indexPath.row==0){
        cell.textLabel.text=_questionArray[0];
    }if(indexPath.row>0&&indexPath.row<=4){
        cell.imageView.image=[UIImage imageNamed:@"unchecked.png"];
        answers=_answerArray[@"one"];
        NSLog(@"%@",answers[0]);
        cell.textLabel.text=answers[(indexPath.row)-1];
        
    }if(indexPath.row==5){
        cell.textLabel.text=_questionArray[1];

        
    }if(indexPath.row>5&&indexPath.row<=9){
        cell.imageView.image=[UIImage imageNamed:@"unchecked.png"];
        answers=_answerArray[@"two"];
        cell.textLabel.text=answers[indexPath.row-6];
    }if(indexPath.row==10){
        cell.textLabel.text=_questionArray[2];

    }if(indexPath.row>10&&indexPath.row<=14){
        cell.imageView.image=[UIImage imageNamed:@"unchecked.png"];

        answers=_answerArray[@"three"];
        cell.textLabel.text=answers[indexPath.row-11];
    }if(indexPath.row==15){
        cell.textLabel.text=_questionArray[3];

    }if(indexPath.row>15&&indexPath.row<=19){
        cell.imageView.image=[UIImage imageNamed:@"unchecked.png"];
        answers=_answerArray[@"four"];
        cell.textLabel.text=answers[indexPath.row-16];
    }if(indexPath.row==20){
        cell.textLabel.text=_questionArray[4];

    }if(indexPath.row>20&&indexPath.row<=24){
        cell.imageView.image=[UIImage imageNamed:@"unchecked.png"];
        answers=_answerArray[@"five"];
        cell.textLabel.text=answers[indexPath.row-21];
    }
        
    return cell;
}

-(NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    if(cell.selectionStyle == UITableViewCellSelectionStyleNone){
        return nil;
    }
    return indexPath;
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
