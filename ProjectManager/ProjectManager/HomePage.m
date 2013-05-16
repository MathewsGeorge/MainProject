//
//  HomePage.m
//  ProjectManager
//
//  Created by Unbounded Solutions on 5/12/13.
//  Copyright (c) 2013 Unbounded Solutions. All rights reserved.
//

#import "HomePage.h"

@interface HomePage ()

@end

@implementation HomePage

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
    [self.navigationController setNavigationBarHidden:YES];

    if(![[NSUserDefaults standardUserDefaults] boolForKey:@"LoginStatus"])
    {
        
        UIStoryboard *stb= [UIStoryboard storyboardWithName:@"MainStoryboard_iPhone" bundle:[NSBundle mainBundle]];
        ViewController *signInPage = [stb instantiateViewControllerWithIdentifier:@"LoginPage"];
        [self.navigationController pushViewController:signInPage animated:YES];
    }
    
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES];
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
   // [[self navigationController] setNavigationBarHidden:NO];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [super dealloc];
}
- (IBAction)showMessages:(id)sender {
/*    UIStoryboard *stb= [UIStoryboard storyboardWithName:@"MainStoryboard_iPhone" bundle:[NSBundle mainBundle]];
    ViewController *signInPage = [stb instantiateViewControllerWithIdentifier:@"LoginPage"];
    [self.navigationController pushViewController:signInPage animated:YES];
*/
}
@end
