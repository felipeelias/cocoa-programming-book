//
//  BookshelfAppDelegate.m
//  Bookshelf
//
//  Created by Felipe Elias Philipp on 04/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "BookshelfAppDelegate.h"
#import "BookshelfController.h"

@implementation BookshelfAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	BookshelfController *bc = [[BookshelfController alloc] initWithNibName:@"Bookshelf" bundle:nil];
  [self.window setContentSize:[bc.view bounds].size];
  self.window.contentView = bc.view;
  [bc createReport];
}

@end
