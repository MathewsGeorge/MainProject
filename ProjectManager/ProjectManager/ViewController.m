//
//  ViewController.m
//  ProjectManager
//
//  Created by Unbounded Solutions on 5/9/13.
//  Copyright (c) 2013 Unbounded Solutions. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField == self.txtField_Email)
    {
        [self.txtField_Password becomeFirstResponder];
    }
    else if(textField == self.txtField_Password)
    {
        [textField resignFirstResponder];
    }
    return YES;
}

- (IBAction)authenticateCredentials:(id)sender
{
    if ([self.txtField_Email.text isEqualToString:@"sel"]) 
    {
    [[NSUserDefaults standardUserDefaults] setBool:TRUE forKey:@"LoginStatus"];
    
    }
    else
    {
         [[NSUserDefaults standardUserDefaults] setBool:FALSE forKey:@"LoginStatus"];
    }
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)dealloc {
    [_txtField_Email release];
    [_txtField_Password release];
    [super dealloc];
}
@end
