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

- (NSNumber *) combine:(NSNumber *)x 
                  with:(NSNumber *)y 
            usingBlock:(NSInteger (^)(NSInteger, NSInteger))block {  
  NSInteger xAsInt = [x integerValue];
  NSInteger yAsInt = [y integerValue];
  NSInteger result = block(xAsInt, yAsInt);
  return [NSNumber numberWithInteger:result];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
  NSNumber *firstNumber = [NSNumber numberWithInteger:7];
  NSNumber *secondNumber = [NSNumber numberWithInteger:5];
  
  NSNumber *sum = [self combine:firstNumber 
                           with:secondNumber
                     usingBlock:^(NSInteger x, NSInteger y) { return x + y; }];
  NSLog(@"The sum of %@ and %@ is %@.", firstNumber, secondNumber, sum);
  
  NSNumber *product = [self combine:firstNumber
                               with:secondNumber
                         usingBlock:^(NSInteger x, NSInteger y) { return x * y; }];
  NSLog(@"The product of %@ and %@ is %@.", firstNumber, secondNumber, product);
}

@end
