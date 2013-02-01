//
//  ViewController.m
//  TabBar
//
//  Created by svp on 06.09.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize v2;
@synthesize nav2;

- (void)dealloc {
    [v2 release];
    [nav2 release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self=[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title=NSLocalizedString(@"First", @"First");
       // self.tabBarItem.image=[UIImage imageNamed:@"First"];
    }
    return self;
}


-(void)dismissModal
{
    [v2 release];
    [nav2 release];
    [self dismissModalViewControllerAnimated:YES];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    v2=[[ViewController3 alloc]initWithNibName:nil bundle:nil];
    v2.delegate=self;
   // v2.modalTransitionStyle=UIModalTransitionStyleCoverVertical;
    nav2=[[UINavigationController alloc]initWithRootViewController:v2];
    nav2.modalTransitionStyle=UIModalTransitionStyleFlipHorizontal;
    [self presentModalViewController:nav2 animated:YES];
    
}
/*
-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    v2=[[ViewController3 alloc]initWithNibName:nil bundle:nil parent:self];
    nav2=[[UINavigationController alloc]initWithRootViewController:v2];
    [self presentModalViewController:nav2 animated:YES];
}

*/

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
