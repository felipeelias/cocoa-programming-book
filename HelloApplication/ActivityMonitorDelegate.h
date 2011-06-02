//
//  ActivityMonitorDelegate.h
//  HelloApplication
//
//  Created by Felipe Elias Philipp on 02/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class CurrentApp;

@protocol ActivityMonitorDelegate

-(void)applicationDidLaunch: (CurrentApp *) app;
-(void)applicationDidTerminate: (CurrentApp *) app;

@end
