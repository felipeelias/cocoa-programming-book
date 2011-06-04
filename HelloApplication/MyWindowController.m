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

- (IBAction) loadTableView: (id) sender {
  self.ac = [[ActivityController alloc] initWithNibName:@"ActivityView" bundle:nil];
  [self setUpView];
}

- (IBAction) loadIconView: (id) sender {
  self.ac = [[IconViewController alloc] initWithNibName:@"IconView" bundle:nil];
  [self setUpView];
}

- (void) loadView {
  NSArray *viewArray = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Views" ofType:@"plist"]];
  NSDictionary *view = [viewArray objectAtIndex:[[[NSUserDefaults standardUserDefaults] objectForKey:@"TagForView"] intValue]];
  self.ac = [[NSClassFromString([view objectForKey:@"class"]) alloc] initWithNibName:[view objectForKey:@"nib"] bundle:nil];
  [self setUpView];
}

- (id) initWithWindowNibName:(NSString *)windowNibName {
  if (self = [super initWithWindowNibName:windowNibName]) {
    [self loadView];
    [self showWindow:self];
  }
  return self;
}

- (id) init {
  return [self initWithWindowNibName:@"MainWindow"];
}

@end
