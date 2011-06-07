//
//  SimpleCalcAppDelegate.m
//  SimpleCalc
//
//  Created by Felipe Elias Philipp on 07/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SimpleCalcAppDelegate.h"

@implementation SimpleCalcAppDelegate

@synthesize window;

- (NSNumber *) add:(NSNumber *)x to:(NSNumber *)y {
  NSInteger xAsInt = [x integerValue];
  NSInteger yAsInt = [y integerValue];
  NSInteger result = xAsInt + yAsInt;
  return [NSNumber numberWithInteger:result];
}

- (NSNumber *) multiply:(NSNumber *)x by:(NSNumber *)y {
  NSInteger xAsInt = [x integerValue];
  NSInteger yAsInt = [y integerValue];
  NSInteger result = xAsInt * yAsInt;
  return [NSNumber numberWithInteger:result];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	// Insert code here to initialize your application 
}

@end
