//
//  IconView.m
//  HelloApplication
//
//  Created by Felipe Elias Philipp on 03/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "IconView.h"

@implementation IconView

@synthesize alertColor;

- (id)initWithFrame:(NSRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect {
  [self.alertColor set];
  [NSBezierPath strokeRect:frameRect];
}

- (void) awakeFromNib {
  frameRect = NSMakeRect(18, 42, 180, 180);
  [NSBezierPath setDefaultLineWidth:12];
}

@end
