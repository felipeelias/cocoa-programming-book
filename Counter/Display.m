//
//  Display.m
//  Counter
//
//  Created by Felipe Elias Philipp on 04/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Display.h"
#import "UpOrDown.h"

@implementation Display

- (void) updateDisplay:(NSNumber *)newValue {
  [displayField setIntegerValue:[newValue integerValue]];
}

- (void) observeValueForKeyPath:(NSString *)keypath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
  // calls the @"count" keyPath from UpOrDown object
  [self updateDisplay:[object valueForKeyPath:keypath]];
}

- (void) awakeFromNib {
  [counter addObserver:self forKeyPath:@"count" options:NSKeyValueObservingOptionNew context:NULL];
}

- (void) finalize {
  [counter removeObserver:self forKeyPath:@"count"];
  [super finalize];
}

@end
