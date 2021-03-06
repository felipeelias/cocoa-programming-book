//
//  ActivityController.m
//  HelloApplication
//
//  Created by Felipe Elias Philipp on 01/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ActivityController.h"
#import "BanishedApps.h"

@implementation ActivityController

@synthesize runningApps, table, deleteButton, banishedApps;

#pragma mark ActivityMonitorDelegate methods

- (void) applicationDidLaunch:(NSRunningApplication *)app {
  if ([self.banishedApps contains:app]) return;
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

- (void) tableViewSelectionDidChange:(NSNotification *)notification {
  [self.deleteButton setEnabled:YES];
}

#pragma mark Remove Button

- (IBAction) removeRow: (id) sender {
  [self.banishedApps add:[self.runningApps objectAtIndex:[self.table selectedRow]]];
  [self.runningApps removeObjectAtIndex:[self.table selectedRow]];
  [self.table deselectAll:nil];
  [self.table reloadData];
  [self.deleteButton setEnabled:NO];
}

#pragma mark Initialization

- (id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
  if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
    self.banishedApps = [[BanishedApps alloc] init];
    self.runningApps = [NSMutableArray arrayWithCapacity:20];
    for (NSRunningApplication *app in [[NSWorkspace sharedWorkspace] runningApplications]) {
      if (![self.banishedApps contains:app]) {
        [self.runningApps addObject:app];
      }
    }
  }
  return self;
}

@end
