//
//  HelloApplicationAppDelegate.m
//  HelloApplication
//
//  Created by Felipe Elias Philipp on 01/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HelloApplicationAppDelegate.h"
#import "MyWindowController.h"
#import "PreferencesController.h"

@implementation HelloApplicationAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
  [[MyWindowController alloc] initWithWindowNibName:@"MainWindow"];
}

- (IBAction) openPreferences: (id) sender {
  PreferencesController *prefController = [[PreferencesController alloc] initWithWindowNibName:@"Preferences"];
  [prefController showWindow:self];
}

+ (void) initialize {
  NSDictionary *defaults = [NSDictionary dictionaryWithObject:@"YES" forKey:@"LoadSavedRemovedApps"];
  [[NSUserDefaults standardUserDefaults] registerDefaults:defaults];
}

@end
