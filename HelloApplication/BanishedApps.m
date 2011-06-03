//
//  BanishedApps.m
//  HelloApplication
//
//  Created by Felipe Elias Philipp on 03/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "BanishedApps.h"


@implementation BanishedApps

@synthesize apps, dataFile;

#pragma mark Collection methods

- (BOOL) contains:(NSRunningApplication *)app {
  return [self.apps containsObject:app.localizedName];
}

- (void) add:(NSRunningApplication *)app {
  if ([self contains:app]) return;
  [self.apps addObject:app.localizedName];
  [self.apps writeToFile:self.dataFile atomically:YES];
}

#pragma mark Initialization

- (void) setSupportFile {
  NSFileManager *fileManager = [NSFileManager defaultManager];
  NSString *appSupport = [NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, NSUserDomainMask, YES) objectAtIndex:0];
  NSString *dir = [NSString stringWithFormat:@"%@/HelloApplication/", appSupport];
  [fileManager createDirectoryAtPath:dir 
         withIntermediateDirectories:YES 
                          attributes:nil 
                               error:nil];
  self.dataFile = [dir stringByAppendingFormat:@"removedApps.plist"];
}

- (id) init {
  if (self = [super init]) {
    self.apps = [NSMutableArray arrayWithCapacity:5];
    [self setSupportFile];
  }
  return self;
}

@end
