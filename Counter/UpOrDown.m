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
  [display updateDisplay:[NSNumber numberWithInteger:[sender integerValue]]];
}

@end
