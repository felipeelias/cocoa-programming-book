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
#import "IconViewController.h"

@implementation MyWindowController

@synthesize app, ac;

- (void) setUpView {
  self.app = [[CurrentApp alloc] init];
  self.app.delegate = self.ac;
  [self.window setContentSize:[self.ac.view bounds].size];
  self.window.contentView = self.ac.view;
  [self.ac applicationDidLaunch:[NSRunningApplication currentApplication]];
}

- (void) loadIconView {
  self.ac = [[IconViewController alloc] initWithNibName:@"IconView" bundle:nil];
}

- (void) loadTableView {
  self.ac = [[ActivityController alloc] initWithNibName:@"ActivityView" bundle:nil];
}

- (BOOL) shouldLoadIconView {
  return (1 == [[[NSUserDefaults standardUserDefaults] objectForKey:@"TagForView"] intValue]);
}

- (id) initWithWindowNibName:(NSString *)windowNibName {
  if (self = [super initWithWindowNibName:windowNibName]) {
    if ([self shouldLoadIconView]) [self loadIconView];
    else [self loadTableView];
    [self setUpView];
    [self showWindow:self];
  }
  return self;
}

@end
