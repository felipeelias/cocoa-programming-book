//
//  MyWindowController.m
//  HelloApplication
//
//  Created by Felipe Elias Philipp on 03/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MyWindowController.h"


@implementation MyWindowController

- (id) initWithWindowNibName:(NSString *)windowNibName {
  if (self = [super initWithWindowNibName:windowNibName]) {
    [self showWindow:self];
  }
  return self;
}

@end
