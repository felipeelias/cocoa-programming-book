//
//  ActivityController.m
//  HelloApplication
//
//  Created by Felipe Elias Philipp on 01/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ActivityController.h"

@implementation ActivityController

@synthesize runningApps, table, deleteButton;

#pragma mark ActivityMonitorDelegate methods

- (void) applicationDidLaunch:(NSRunningApplication *)app {
  [self.runningApps addObject:app];
  [self.table reloadData];
}

- (void) applicationDidTerminate:(NSRunningApplication *)app {
  [self.runningApps removeObject:app];
  [self.table reloadData];
}

#pragma mark Table related methods

- (NSInteger)numberOfRowsInTableView:(NSTableView *)aTableView {
  return [runningApps count];
}

- (id) tableView:(NSTableView *)aTableView objectValueForTableColumn:(NSTableColumn *)aTableColumn row:(NSInteger)rowIndex {
  return [[runningApps objectAtIndex:rowIndex] valueForKey:[aTableColumn identifier]];
}

#pragma mark Remove Button

- (IBAction) removeRow: (id) sender {
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
