//
//  Display.m
//  Counter
//
//  Created by Felipe Elias Philipp on 04/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Display.h"


@implementation Display

- (void) updateDisplay:(NSNumber *)newValue {
  [displayField setIntegerValue:[newValue integerValue]];
}

@end
