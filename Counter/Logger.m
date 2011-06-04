//
//  Logger.m
//  Counter
//
//  Created by Felipe Elias Philipp on 05/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Logger.h"


@implementation Logger

- (void) logValue: (NSNumber *) value {
  NSLog(@"Value changed: %@", value);
}

- (void) observeValueForKeyPath:(NSString *)keypath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
  [self logValue:[object valueForKeyPath:keypath]];
}

- (void) awakeFromNib {
  [counter addObserver:self forKeyPath:@"count" options:NSKeyValueObservingOptionNew context:NULL];
}

- (void) finalize {
  [counter removeObserver:self forKeyPath:@"count"];
  [super finalize];
}

@end
