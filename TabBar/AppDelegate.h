//
//  AppDelegate.h
//  TabBar
//
//  Created by svp on 06.09.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;
@class ViewController2;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController1;
@property (strong, nonatomic) ViewController2 *viewController2;
@property (strong, nonatomic) UITabBarController *tabBarController;

@end
