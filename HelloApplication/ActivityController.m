//
//  ActivityController.m
//  HelloApplication
//
//  Created by Felipe Elias Philipp on 01/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ActivityController.h"

@implementation ActivityController

@synthesize activityDisplay, imageViewer;

#pragma mark Utility methods

- (void) displayAction: (NSString *) action forApplication:(NSRunningApplication *) app {
  [self.activityDisplay setStringValue:[NSString stringWithFormat:@"%@: %@", action, app.localizedName]];
  [self.imageViewer setImage:app.icon];  
}

#pragma mark ActivityMonitorDelegate methods

- (void) applicationDidLaunch:(NSRunningApplication *)app {
  [self displayAction:@"Launched" forApplication:app];
}

- (void) applicationDidTerminate:(NSRunningApplication *)app {
  [self displayAction:@"Terminated" forApplication:app];
}

@end
