//
//  ViewController.h
//  ProjectManager
//
//  Created by Unbounded Solutions on 5/9/13.
//  Copyright (c) 2013 Unbounded Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>
@property (retain, nonatomic) IBOutlet UITextField *txtField_Email;
- (IBAction)authenticateCredentials:(id)sender;
@property (retain, nonatomic) IBOutlet UITextField *txtField_Password;

@end
