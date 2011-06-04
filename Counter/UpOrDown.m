//
//  UpOrDown.m
//  Counter
//
//  Created by Felipe Elias Philipp on 04/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "UpOrDown.h"

@implementation UpOrDown

@synthesize countOne, countTwo;

- (IBAction) stepOne: (id) sender {
  self.countOne = [NSNumber numberWithInteger:[sender integerValue]];
}

- (IBAction) stepTwo: (id) sender {
  self.countTwo = [NSNumber numberWithInteger:[sender integerValue]];
}

@end
