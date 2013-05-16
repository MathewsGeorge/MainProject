//
//  ColleagueListViewController.m
//  ProjectManager
//
//  Created by Unbounded Solutions on 5/14/13.
//  Copyright (c) 2013 Unbounded Solutions. All rights reserved.
//

#import "ColleagueListViewController.h"

@interface ColleagueListViewController ()

@end

@implementation ColleagueListViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.colleagueList = [[[NSMutableArray alloc]init]autorelease];
    [self loadColleagueList];
    
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [[self navigationController] setNavigationBarHidden:NO animated:YES];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)loadColleagueList
{
    __block NSURLConnection *conn;
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT,0), ^{
    
    NSURL *url = [NSURL URLWithString:@"http://localhost:8888/getAllUsers.php"];
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
  /*  [NSURLConnection sendAsynchronousRequest:req queue:[[NSOperationQueue alloc]init] completionHandler:^(NSURLResponse *urlResponse, NSData *data, NSError *error){
        
        NSArray *arr = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
        for (int i=0; i<arr.count; i++) {
            NSDictionary *dictObservations = [arr objectAtIndex:i];
            NSLog(@"%@",[dictObservations objectForKey:@"userId"]);
        }

    }];
   */
        //_connection = [[NSURLConnection alloc] init];
        NSLog(@"Cutrrent1 = %@",[NSThread callStackSymbols]);

  conn =[NSURLConnection connectionWithRequest:req delegate:self];
        NSLog(@"Cutrrent2 = %@",[NSThread callStackSymbols]);

        [[NSRunLoop currentRunLoop] run];
        
        NSLog(@"Cutrrent3 = %@",[NSThread callStackSymbols]);

    });
}
                   
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    NSLog(@"recieve conn");

}


-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    NSError *error;
    NSArray *arr = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
    for (int i=0; i<arr.count; i++) {
        NSDictionary *dictObservations = [arr objectAtIndex:i];
        User *user = [[User alloc]init];
        user.userId = [dictObservations objectForKey:@"userId"];
        user.password = [dictObservations objectForKey:@"password"];
        user.department = [dictObservations objectForKey:@"departmentId"];
        user.position = [dictObservations objectForKey:@"position"];
        user.userName = [dictObservations objectForKey:@"userName"];
        user.location = [dictObservations objectForKey:@"location"];
        
        user.priority = [NSNumber numberWithInteger:[[dictObservations objectForKey:@"priority"] integerValue]];
        user.phone = [dictObservations objectForKey:@"phoneNumber"];
        NSLog(@"%@",[dictObservations objectForKey:@"phoneNumber"]);
        [self.colleagueList addObject:user];
        [user release];

    }
    [self.tblView_Colleagues reloadData];
}

-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
     NSLog(@"Failed to Established conn");
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.colleagueList count];
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell==nil) {
        cell= [[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"]autorelease];
    }
    User *user = [self.colleagueList objectAtIndex:indexPath.row];
    UILabel *lblName = [[UILabel alloc]initWithFrame:CGRectMake(10, 0, 120, 60)];
    [lblName setText:user.userName];
    [lblName setTextAlignment:NSTextAlignmentLeft];
    [lblName setNumberOfLines:0];
    [cell addSubview:lblName];
    [lblName release];
    
    
    
    UILabel *lbl = [[UILabel alloc]initWithFrame:CGRectMake(self.tblView_Colleagues.frame.size.width-130, 0, 120, 60)];
    [lbl setText:[NSString stringWithFormat:@"%@\n%@",user.position,user.department]];
    [lbl setTextAlignment:NSTextAlignmentRight];
    [lbl setNumberOfLines:0];

    [cell addSubview:lbl];
    [lbl release];
    
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    User *user = [self.colleagueList objectAtIndex:indexPath.row];
    [self performSegueWithIdentifier:@"colleagueDetails" sender:user];
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"colleagueDetails"]) {
        
        ColleagueDetailViewController *dtv = (ColleagueDetailViewController *)[segue destinationViewController];
        [dtv setUser:(User*)sender];
    }
}



- (void)dealloc {
    [_tblView_Colleagues release];
    [_barBtn_add release];
    [super dealloc];
}
@end
