//
//  BounceAppDelegate.m
//  Bounce
//
//  Created by Felipe Elias Philipp on 05/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "BounceAppDelegate.h"

@implementation BounceAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	NSArray *source = [NSArray arrayWithObjects:@"One", @"Two", nil];
  [source writeToFile:@"savedArray" atomically:YES];
  NSArray *fromDisk = [NSArray arrayWithContentsOfFile:@"savedArray"];
  NSLog(@"%@", fromDisk);
}

@end
