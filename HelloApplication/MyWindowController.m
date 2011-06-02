//
//  MyWindowController.m
//  HelloApplication
//
//  Created by Felipe Elias Philipp on 03/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MyWindowController.h"
#import "CurrentApp.h"
#import "ActivityController.h"

@implementation MyWindowController

@synthesize app, ac;

- (void) setUpView {
  self.ac = [[ActivityController alloc] initWithNibName:@"ActivityView" bundle:nil];
  self.app = [[CurrentApp alloc] init];
  self.app.delegate = self.ac;
  [self.window setContentSize:[self.ac.view bounds].size];
  self.window.contentView = self.ac.view;
  [self.ac applicationDidLaunch:[NSRunningApplication currentApplication]];
}

- (id) initWithWindowNibName:(NSString *)windowNibName {
  if (self = [super initWithWindowNibName:windowNibName]) {
    [self setUpView];
    [self showWindow:self];
  }
  return self;
}

@end
