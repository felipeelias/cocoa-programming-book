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

- (NSInteger) tripleWithBlock: (NSInteger (^)(NSInteger)) block {
  return block(3);
}

/*
 * NSNumber *sum = [self combine:firstNumber 
 *                          with:secondNumber
 *                    usingBlock:^(NSInteger x, NSInteger y) { return x + y; }];
 */
- (NSNumber *) combine:(NSNumber *)x 
                  with:(NSNumber *)y 
            usingBlock:(NSInteger (^)(NSInteger, NSInteger))block {  
  NSInteger xAsInt = [x integerValue];
  NSInteger yAsInt = [y integerValue];
  NSInteger result = block(xAsInt, yAsInt);
  return [NSNumber numberWithInteger:result];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
  NSInteger multiplicand = 5;
  NSInteger product = [self tripleWithBlock:^(NSInteger multiplier) {
    return multiplier * multiplicand;
  }];
  NSLog(@"Triple %d is %d.", multiplicand, product);
}

@end
