//
//  IconViewController.m
//  HelloApplication
//
//  Created by Felipe Elias Philipp on 03/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "IconViewController.h"
#import "IconView.h"

@implementation IconViewController

#pragma mark Utility methods

- (void) displayColor: (NSColor *) color for: (NSRunningApplication *) app {
  ((IconView *) self.view).alertColor = color;
  ((IconView *) self.view).imageView.image = app.icon;
  ((IconView *) self.view).appName = app.localizedName;
}

#pragma mark ActivityMonitorDelegate protocol

- (void) applicationDidLaunch:(NSRunningApplication *)app {
  [self displayColor:[NSColor greenColor] for:app];
  [self.view setNeedsDisplay:YES];
}

- (void) applicationDidTerminate:(NSRunningApplication *)app {
  [self displayColor:[NSColor redColor] for:app];
  [self.view setNeedsDisplay:YES];
}

@end
