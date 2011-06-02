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

#pragma mark ActivityMonitorDelegate methods

- (void) applicationDidLaunch:(CurrentApp *)app {
  [self.activityDisplay setStringValue:@"Launched"];
}

- (void) applicationDidTerminate:(CurrentApp *)app {
  [self.activityDisplay setStringValue:@"Terminated"];
}

#pragma mark Initialization

-(void) awakeFromNib {
	self.currentApp = [[CurrentApp alloc] init];
  self.currentApp.delegate = self;
}

@end
