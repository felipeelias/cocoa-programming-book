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
@property (copy) NSSet *retrievedSet;
@end


@implementation BounceAppDelegate

@synthesize window, retrievedSet;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
  [self createSetOnDisk];
  [self setFromDisk];
  NSLog(@"%@", self.retrievedSet);
}

- (void) createSetOnDisk {
	NSSet *source = [NSSet setWithObjects:@"One", @"Two", nil];
  [source writeToFile:@"savedSet" atomically:YES];
}

- (void) setFromDisk {
  self.retrievedSet = [NSSet setWithContentsOfFile:@"savedSet"];
}

@end
