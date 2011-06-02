//
//  ActivityController.m
//  HelloApplication
//
//  Created by Felipe Elias Philipp on 01/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ActivityController.h"
#import "CurrentApp.h"

@implementation ActivityController

@synthesize currentApp, activityDisplay;

- (void) applicationDidLaunch: (NSNotification *) notification {
  [self.activityDisplay setStringValue:@"Launch"];
}

- (void) applicationDidTerminate: (NSNotification *) notification {
  [self.activityDisplay setStringValue:@"Terminated"];
}

-(void)setUpNotification:(NSString *)notification withSelector:(SEL)methodName {
  [[NSNotificationCenter defaultCenter] addObserver:self selector:methodName name:notification object:nil];
}

-(void) registerNotifications { 
  [self setUpNotification:@"Launch" withSelector:@selector(applicationDidLaunch:)];
  [self setUpNotification:@"Terminated" withSelector:@selector(applicationDidTerminate:)];
}

-(void) awakeFromNib {
	self.currentApp = [[CurrentApp alloc] init];
  [self registerNotifications];
}

@end
