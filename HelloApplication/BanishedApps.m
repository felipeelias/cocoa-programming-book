//
//  BanishedApps.m
//  HelloApplication
//
//  Created by Felipe Elias Philipp on 03/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "BanishedApps.h"


@implementation BanishedApps

@synthesize apps;

- (BOOL) contains:(NSRunningApplication *)app {
  return [self.apps containsObject:app.localizedName];
}

- (void) add:(NSRunningApplication *)app {
  if ([self contains:app]) return;
  [self.apps addObject:app.localizedName];
}

- (id) init {
  if (self = [super init]) {
    self.apps = [NSMutableArray arrayWithCapacity:5];
  }
  return self;
}

@end
