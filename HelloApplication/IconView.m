//
//  IconView.m
//  HelloApplication
//
//  Created by Felipe Elias Philipp on 03/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "IconView.h"

@implementation IconView

@synthesize alertColor, imageView;

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
  [self.imageView.image setSize:imageRect.size];
}

- (void) awakeFromNib {
  frameRect = NSMakeRect(18, 42, 180, 180);
  [NSBezierPath setDefaultLineWidth:12];
  imageRect = NSMakeRect(36, 66, 144, 144);
  self.imageView = [[NSImageView alloc] initWithFrame:imageRect];
  [self addSubview:self.imageView];
}

@end
