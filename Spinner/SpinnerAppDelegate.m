//
//  SpinnerAppDelegate.m
//  Spinner
//
//  Created by Felipe Elias Philipp on 07/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SpinnerAppDelegate.h"

@implementation SpinnerAppDelegate

@synthesize window;

-(void) spin:(NSProgressIndicator *) spinner {
  [spinner startAnimation:self];
  sleep(1);
  [spinner stopAnimation:self];
}

-(NSArray *) arrayOfSpinners {
  NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:25];
  for (int i = 0; i < 25; i++) {
    NSProgressIndicator *spinner = [[NSProgressIndicator alloc] initWithFrame: NSMakeRect(16 * i + 8, 20, 16, 16)];
    [spinner setStyle:NSProgressIndicatorSpinningStyle];
    [spinner setControlSize:NSSmallControlSize];
    [spinner setDisplayedWhenStopped:NO];
    [window.contentView addSubview:spinner];
    [array addObject:spinner];
  }
  return array;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
  NSArray *arrayOfSpinners = [self arrayOfSpinners];
  for (NSProgressIndicator *spinner in arrayOfSpinners) {
    [self spin:spinner];
  }
}

@end
