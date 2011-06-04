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

- (void) updateDisplayOne:(NSNumber *)newValue {
  [displayFieldOne setIntegerValue:[newValue integerValue]];
}

- (void) updateDisplayTwo:(NSNumber *)newValue {
  [displayFieldTwo setIntegerValue:[newValue integerValue]];
}

- (void) observeValueForKeyPath:(NSString *)keypath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
  if ([keypath isEqualToString:@"countOne"]) {
    [self updateDisplayOne:[object valueForKeyPath:keypath]];
  } else {
    [self updateDisplayTwo:[object valueForKeyPath:keypath]];
  }
}

- (void) awakeFromNib {
  [counter addObserver:self forKeyPath:@"countOne" options:NSKeyValueObservingOptionNew context:NULL];
  [counter addObserver:self forKeyPath:@"countTwo" options:NSKeyValueObservingOptionNew context:NULL];
}

- (void) finalize {
  [counter removeObserver:self forKeyPath:@"countOne"];
  [counter removeObserver:self forKeyPath:@"countTwo"];
  [super finalize];
}

@end
