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

- (void) applicationDidLaunch:(NSRunningApplication *)app {
  ((IconView *) self.view).alertColor = [NSColor greenColor];
  [self.view setNeedsDisplay:YES];
}

- (void) applicationDidTerminate:(NSRunningApplication *)app {
  ((IconView *) self.view).alertColor = [NSColor redColor];
  [self.view setNeedsDisplay:YES];
}

@end
