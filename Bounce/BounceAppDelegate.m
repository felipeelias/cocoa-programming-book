//
//  BounceAppDelegate.m
//  Bounce
//
//  Created by Felipe Elias Philipp on 05/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "BounceAppDelegate.h"
#import "NSSet+Persistence.h"

@interface BounceAppDelegate()
-(void) createSetOnDisk;
-(void) setFromDisk;
@end


@implementation BounceAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
  [self createSetOnDisk];
  [self setFromDisk];
}

- (void) createSetOnDisk {
	NSSet *source = [NSSet setWithObjects:@"One", @"Two", nil];
  [source writeToFile:@"savedSet" atomically:YES];
}

- (void) setFromDisk {
  NSSet *fromDisk = [NSSet setWithContentsOfFile:@"savedSet"];
  NSLog(@"%@", fromDisk);
}

@end
