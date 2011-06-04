//
//  UpOrDown.m
//  Counter
//
//  Created by Felipe Elias Philipp on 04/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "UpOrDown.h"

@implementation UpOrDown

@synthesize countOne, countTwo, totalCount;

- (IBAction) stepOne: (id) sender {
  self.countOne = [NSNumber numberWithInteger:[sender integerValue]];
}

- (IBAction) stepTwo: (id) sender {
  self.countTwo = [NSNumber numberWithInteger:[sender integerValue]];
}

+ (NSSet *) keyPathsForValuesAffectingTotalCount {
  return [NSSet setWithObjects:@"countOne", @"countTwo", nil];
}

- (NSNumber *) totalCount {
  return [NSNumber numberWithInt:[self.countOne intValue] + [self.countTwo intValue]];
}

- (void) awakeFromNib {
  [self addObserver:self forKeyPath:@"totalCount" options:NSKeyValueObservingOptionNew context:NULL];
}

- (void) observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
  NSLog(@"%@", self.totalCount);
}

@end
