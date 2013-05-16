//
//  NewProjectViewController.m
//  ProjectManager
//
//  Created by Unbounded Solutions on 5/14/13.
//  Copyright (c) 2013 Unbounded Solutions. All rights reserved.
//

#import "NewProjectViewController.h"

@interface NewProjectViewController ()

@end

@implementation NewProjectViewController

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
    [self initialiseView];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)initialiseView
{
    
    
    self.txtFieldTitle = [[[UITextField alloc] initWithFrame:CGRectMake(10, 50, self.scrollView_main.frame.size.width-20, 28)]autorelease];
    [self.txtFieldTitle setPlaceholder:@"Title"];
    [self.txtFieldTitle setDelegate:self];
    [self.txtFieldTitle setBorderStyle:UITextBorderStyleRoundedRect];
    [self.txtFieldTitle setClearButtonMode:UITextFieldViewModeWhileEditing];
    
    self.txtFieldClient = [[[UITextField alloc] initWithFrame:CGRectMake(10, 110, self.scrollView_main.frame.size.width-20, 28)]autorelease];
    [self.txtFieldClient setPlaceholder:@"Client"];
    [self.txtFieldClient setDelegate:self];
    [self.txtFieldClient setBorderStyle:UITextBorderStyleRoundedRect];
    [self.txtFieldClient setClearButtonMode:UITextFieldViewModeWhileEditing];
    
    self.txtFieldVender = [[[UITextField alloc] initWithFrame:CGRectMake(10, 170, self.scrollView_main.frame.size.width-20, 28)]autorelease];
    [self.txtFieldVender setPlaceholder:@"Vender"];
    [self.txtFieldVender setDelegate:self];
    [self.txtFieldVender setBorderStyle:UITextBorderStyleRoundedRect];
    [self.txtFieldVender setClearButtonMode:UITextFieldViewModeWhileEditing];
    
    self.txtFieldComment = [[[UITextField alloc] initWithFrame:CGRectMake(10, 230, self.scrollView_main.frame.size.width-20, 28)]autorelease];
    [self.txtFieldComment setPlaceholder:@"Comment"];
    [self.txtFieldComment setDelegate:self];
    [self.txtFieldComment setBorderStyle:UITextBorderStyleRoundedRect];
    [self.txtFieldComment setClearButtonMode:UITextFieldViewModeWhileEditing];
    
    self.txtFieldBudget = [[[UITextField alloc] initWithFrame:CGRectMake(10, 290, self.scrollView_main.frame.size.width-20, 28)]autorelease];
    [self.txtFieldBudget setPlaceholder:@"Budget in USD"];
    [self.txtFieldBudget setDelegate:self];
    [self.txtFieldBudget setBorderStyle:UITextBorderStyleRoundedRect];
    [self.txtFieldBudget setClearButtonMode:UITextFieldViewModeWhileEditing];
    
    
    UILabel *lbl_startDate = [[UILabel alloc]initWithFrame:CGRectMake(10, 350, 180, 30)];
    [lbl_startDate setText:@"Select the start date"];
    [lbl_startDate setBackgroundColor:[UIColor clearColor]];
    
    self.datePicker_start = [[[UIDatePicker alloc]initWithFrame:CGRectMake(0, 400, 150, 120)]autorelease];
    [self.datePicker_start setDatePickerMode:UIDatePickerModeDate];
    
    
    UILabel *lbl_dueDate = [[UILabel alloc]initWithFrame:CGRectMake(10, 650, 180, 30)];
    [lbl_dueDate setText:@"Select the due date"];
    [lbl_dueDate setBackgroundColor:[UIColor clearColor]];
    
    
    self.datePicker_due = [[[UIDatePicker alloc]initWithFrame:CGRectMake(0, 700, 150, 120)]autorelease];
    [self.datePicker_due setDatePickerMode:UIDatePickerModeDate];
    
    
    [self.scrollView_main addSubview:self.txtFieldTitle];
    [self.scrollView_main addSubview:self.txtFieldClient];
    [self.scrollView_main addSubview:self.txtFieldVender];
    [self.scrollView_main addSubview:self.txtFieldComment];
    [self.scrollView_main addSubview:self.txtFieldBudget];
    [self.scrollView_main addSubview:lbl_startDate];
    [self.scrollView_main addSubview:self.datePicker_start];
    [self.scrollView_main addSubview:lbl_dueDate];
    [self.scrollView_main addSubview:self.datePicker_due];
    
    
    
    
    [self.scrollView_main setContentSize:CGSizeMake(self.scrollView_main.frame.size.width, 1000)];
    [lbl_startDate release];
    [lbl_dueDate release];
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return  YES;
}

- (void)dealloc {
    
    
    [_scrollView_main release];
//    [self.txtFieldTitle release];
//    [self.txtFieldClient release];
//    [self.txtFieldVender release];
//    [self.txtFieldComment release];
//    [self.txtFieldBudget release];
//    [self.datePicker_due release];
//    [self.datePicker_start release];
    [super dealloc];
    
}
@end
