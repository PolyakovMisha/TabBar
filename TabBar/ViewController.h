//
//  ViewController.h
//  TabBar
//
//  Created by svp on 06.09.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController3.h"

@interface ViewController : UIViewController <MyProtocol>
@property (nonatomic,retain) ViewController3 *v2;
@property (nonatomic, retain) UINavigationController *nav2;

-(void)dismissModal;

@end
