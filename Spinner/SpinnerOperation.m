//
//  SpinnerOperation.m
//  Spinner
//
//  Created by Felipe Elias Philipp on 07/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SpinnerOperation.h"


@implementation SpinnerOperation

-(id) initWithSpinner:(NSProgressIndicator *) newSpinner {
  if (self = [super init]) {
    spinner = newSpinner;
  }
  return self;
}

-(void) main {
  [spinner startAnimation:self];
  for (int i = 0; i<4; i++){
    if ([self isCancelled]) break;
    sleep(1);
  }
  [spinner stopAnimation:self];
}

@end
