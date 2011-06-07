//
//  SpinnerAppDelegate.m
//  Spinner
//
//  Created by Felipe Elias Philipp on 07/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SpinnerAppDelegate.h"
#import "SpinnerOperation.h"

@implementation SpinnerAppDelegate

@synthesize window;

-(IBAction)cancelAllOperations:(id)sender {
  [queue cancelAllOperations];
}

-(IBAction)toggleIsSuspended:(id)sender {
  [queue setSuspended:![queue isSuspended]];
}

-(IBAction)queueStatus:(id)sender {
  NSArray *ops =[queue operations];
  int executing =0;
  int ready=0;
  
  for (NSOperation *operation in ops) {
    if ([operation isExecuting])
      executing++;
    if ([operation isReady])
      ready++;
  }
  NSLog(@"Status for %d operations: executing %d and %d are waiting.", [queue operationCount], executing, ready - executing);
}

-(NSArray *) arrayOfSpinnersOperations {
  NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:25];
  for (int i = 0; i < 25; i++) {
    NSProgressIndicator *spinner = [[NSProgressIndicator alloc] initWithFrame: NSMakeRect(16 * i + 8, 20, 16, 16)];
    [spinner setStyle:NSProgressIndicatorSpinningStyle];
    [spinner setControlSize:NSSmallControlSize];
    [spinner setDisplayedWhenStopped:NO];
    [window.contentView addSubview:spinner];
    SpinnerOperation *op = [[SpinnerOperation alloc] initWithSpinner:spinner];
    [array addObject:op];
  }
  return array;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
  NSArray *arrayOfSpinnersOperations = [self arrayOfSpinnersOperations];
  
  queue = [[NSOperationQueue alloc] init];
  [queue setMaxConcurrentOperationCount:3];
  
  for (SpinnerOperation *operation in arrayOfSpinnersOperations) {
    [queue addOperation:operation];
  }
}

@end
