//
//  ColleagueListViewController.h
//  ProjectManager
//
//  Created by Unbounded Solutions on 5/14/13.
//  Copyright (c) 2013 Unbounded Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"
#import "ColleagueDetailViewController.h"
@interface ColleagueListViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,NSURLConnectionDataDelegate>
@property (retain, nonatomic) IBOutlet UITableView *tblView_Colleagues;
@property (retain, nonatomic) NSMutableArray *colleagueList;
@property (retain, nonatomic) IBOutlet UIBarButtonItem *barBtn_add;



@end
