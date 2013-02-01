//
//  ViewController3.h
//  TabBar
//
//  Created by svp on 07.09.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MyProtocol <NSObject>
@required
-(void)dismissModal;
@end

@interface ViewController3 : UIViewController 
{
    id <MyProtocol> delegate;
}
@property(nonatomic, assign) id <MyProtocol> delegate;

-(void)callDismissModal;

@end
