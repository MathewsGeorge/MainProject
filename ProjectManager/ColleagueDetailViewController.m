//
//  ColleagueDetailViewController.m
//  ProjectManager
//
//  Created by Unbounded Solutions on 5/16/13.
//  Copyright (c) 2013 Unbounded Solutions. All rights reserved.
//

#import "ColleagueDetailViewController.h"

@interface ColleagueDetailViewController ()

@end

@implementation ColleagueDetailViewController

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
    [self.lbl_name setText:self.user.userName];
    [self.lbl_department setText:self.user.department];
    [self.lbl_email setText:self.user.userId];
    [self.lbl_location setText:self.user.location];
    [self.lbl_phone setText:[NSString stringWithFormat:@"%@",self.user.phone]];
    [self.lbl_position setText:self.user.position];
    [self.lbl_reportTo setText:self.user.userName];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)dealloc {
    [_lbl_name release];
    [_lbl_position release];
    [_lbl_department release];
    [super dealloc];
}
@end
