//
//  UpOrDown.m
//  Counter
//
//  Created by Felipe Elias Philipp on 04/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "UpOrDown.h"
#import "Display.h"

@implementation UpOrDown

- (IBAction) step: (id) sender {
  [self setValue:[NSNumber numberWithInteger:[sender integerValue]] forKey:@"count"]; // => when property is not defined, use this (alternative with KVO
  
  // alternative solution (WITHOUT @property count defined)
  //[self willChangeValueForKey:@"count"];
  //count = [NSNumber numberWithInteger:[sender integerValue]];
  //[self didChangeValueForKey:@"count"];

  // alternative solution (WITH @property count defined)
  //count = [NSNumber numberWithInteger:[sender integerValue]];
}

@end
