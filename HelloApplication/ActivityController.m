//
//  ActivityController.m
//  HelloApplication
//
//  Created by Felipe Elias Philipp on 01/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ActivityController.h"

@implementation ActivityController

#pragma mark ActivityMonitorDelegate methods

- (void) applicationDidLaunch:(NSRunningApplication *)app {
}

- (void) applicationDidTerminate:(NSRunningApplication *)app {
}

#pragma mark Table related methods

- (NSInteger)numberOfRowsInTableView:(NSTableView *)aTableView {
  return 100;
}

- (id) tableView:(NSTableView *)aTableView objectValueForTableColumn:(NSTableColumn *)aTableColumn row:(NSInteger)rowIndex {
  return [NSString stringWithFormat:@"Row = %d", rowIndex];
}
@end
