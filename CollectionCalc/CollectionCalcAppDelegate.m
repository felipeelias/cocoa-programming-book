//
//  CollectionCalcAppDelegate.m
//  CollectionCalc
//
//  Created by Felipe Elias Philipp on 07/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CollectionCalcAppDelegate.h"

@implementation CollectionCalcAppDelegate

@synthesize window;

-(NSArray *) createArray {
  return [NSArray arrayWithObjects:[NSNumber numberWithInt:5],
          [NSNumber numberWithInt:2],
          [NSNumber numberWithInt:17],
          [NSNumber numberWithInt:-3],
          [NSNumber numberWithInt:14], nil];
}

-(NSArray *) tripleElementsIn: (NSArray *)originalArray {
  NSMutableArray *tempArray = [[NSMutableArray alloc] initWithCapacity:[originalArray count]];
  [originalArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
    [tempArray addObject:[NSNumber numberWithInt:3 * [obj intValue]]];
  }];
  return tempArray;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	NSArray *numbers = [self createArray];
  NSLog(@"Elements in the initial array:%@", numbers);
  NSArray *transformedNumbers = [self tripleElementsIn:numbers];
  NSLog(@"Elements in the tripled array:%@", transformedNumbers);
}

@end
