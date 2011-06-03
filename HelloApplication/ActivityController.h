//
//  ActivityController.h
//  HelloApplication
//
//  Created by Felipe Elias Philipp on 01/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ActivityMonitorDelegate.h"

@class BanishedApps;

@interface ActivityController : NSViewController <ActivityMonitorDelegate, NSTableViewDelegate, NSTableViewDataSource> {
  NSMutableArray *runningApps;
  NSTableView *table;
  NSButton *deleteButton;
  BanishedApps *banishedApps;
}

@property (retain) NSMutableArray *runningApps;
@property BanishedApps *banishedApps;
@property IBOutlet NSTableView *table;
@property IBOutlet NSButton *deleteButton;

- (IBAction) removeRow: (id) sender;

@end
