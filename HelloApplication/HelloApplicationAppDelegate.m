//
//  HelloApplicationAppDelegate.m
//  HelloApplication
//
//  Created by Felipe Elias Philipp on 01/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HelloApplicationAppDelegate.h"
#import "ActivityController.h"

@implementation HelloApplicationAppDelegate

@synthesize window, ac, app;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
  self.window.contentView = ac.view;
}

@end
