//
//  ActivityController.m
//  HelloApplication
//
//  Created by Felipe Elias Philipp on 01/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ActivityController.h"

@implementation ActivityController

@synthesize runningApps;

#pragma mark ActivityMonitorDelegate methods

- (void) applicationDidLaunch:(NSRunningApplication *)app {
}

- (void) applicationDidTerminate:(NSRunningApplication *)app {
}

#pragma mark Table related methods

- (NSInteger)numberOfRowsInTableView:(NSTableView *)aTableView {
  return [runningApps count];
}

- (id) tableView:(NSTableView *)aTableView objectValueForTableColumn:(NSTableColumn *)aTableColumn row:(NSInteger)rowIndex {
  return [[runningApps objectAtIndex:rowIndex] localizedName];
}

#pragma mark Initialization

- (id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
  if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
    self.runningApps = [NSMutableArray arrayWithCapacity:20];
    [self.runningApps addObjectsFromArray:[[NSWorkspace sharedWorkspace] runningApplications]];
  }
  return self;
}

@end
