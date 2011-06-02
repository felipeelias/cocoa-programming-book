//
//  IconView.m
//  HelloApplication
//
//  Created by Felipe Elias Philipp on 03/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "IconView.h"


@implementation IconView

- (id)initWithFrame:(NSRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect {
  NSRect innerRect = NSMakeRect(18, 42, 180, 180);
  [[NSColor blueColor] set];
  [NSBezierPath fillRect:innerRect];
}

@end
