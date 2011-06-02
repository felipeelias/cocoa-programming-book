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

@synthesize activityDisplay;

#pragma mark ActivityMonitorDelegate methods

- (void) applicationDidLaunch:(CurrentApp *)app {
  [self.activityDisplay setStringValue:[NSString stringWithFormat:@"Launched: %@", app.name]];
}

- (void) applicationDidTerminate:(CurrentApp *)app {
  [self.activityDisplay setStringValue:[NSString stringWithFormat:@"Terminated: %@", app.name]];
}

@end
