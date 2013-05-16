//
//  ColleagueDetailViewController.h
//  ProjectManager
//
//  Created by Unbounded Solutions on 5/16/13.
//  Copyright (c) 2013 Unbounded Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"
@interface ColleagueDetailViewController : UIViewController



@property (retain, nonatomic) User *user;
@property (retain, nonatomic) IBOutlet UILabel *lbl_name;
@property (retain, nonatomic) IBOutlet UILabel *lbl_position;
@property (retain, nonatomic) IBOutlet UILabel *lbl_department;
@property (retain, nonatomic) IBOutlet UILabel *lbl_reportTo;
@property (retain, nonatomic) IBOutlet UILabel *lbl_location;
@property (retain, nonatomic) IBOutlet UILabel *lbl_phone;
@property (retain, nonatomic) IBOutlet UILabel *lbl_email;

@end
