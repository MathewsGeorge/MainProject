//
//  NewProjectViewController.h
//  ProjectManager
//
//  Created by Unbounded Solutions on 5/14/13.
//  Copyright (c) 2013 Unbounded Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Project.h"


@interface NewProjectViewController : UIViewController<UITextFieldDelegate>
@property (retain, nonatomic) IBOutlet UIScrollView *scrollView_main;
@property (retain, nonatomic) UITextField *txtFieldTitle;
@property (retain, nonatomic) UITextField *txtFieldClient;
@property (retain, nonatomic) UITextField *txtFieldVender;
@property (retain, nonatomic) UITextField *txtFieldComment;
@property (retain, nonatomic) UITextField *txtFieldBudget;
@property (retain, nonatomic) UIDatePicker *datePicker_start;
@property (retain, nonatomic) UIDatePicker *datePicker_due;

@end
