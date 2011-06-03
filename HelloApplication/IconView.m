//
//  IconView.m
//  HelloApplication
//
//  Created by Felipe Elias Philipp on 03/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "IconView.h"

@implementation IconView

@synthesize alertColor, imageView, appName;

#pragma mark Drawing methods

- (void)drawRect:(NSRect)dirtyRect {
  [self.alertColor set];
  [NSBezierPath strokeRect:frameRect];
  [self.imageView.image setSize:imageRect.size];
  [self.appName drawInRect:textRect withAttributes:textAttributes];
}

- (void) setUpFrameRect {
  frameRect = NSMakeRect(18, 42, 180, 180);
  [NSBezierPath setDefaultLineWidth:12];
}

- (void) setUpImageView {
  imageRect = NSMakeRect(36, 66, 144, 144);
  self.imageView = [[NSImageView alloc] initWithFrame:imageRect];
  [self addSubview:self.imageView];
}

- (void) setUpTextView {
  textRect = NSMakeRect(36, 10, 144, 20);
  NSMutableParagraphStyle *par = [[NSMutableParagraphStyle alloc] init];
  [par setAlignment:NSCenterTextAlignment];
  textAttributes = [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                    [NSColor blueColor], 
                    NSForegroundColorAttributeName, 
                    par, 
                    NSParagraphStyleAttributeName, 
                    [NSFont boldSystemFontOfSize:12], 
                    NSFontAttributeName, 
                    nil];
}

#pragma mark Initialization

- (id)initWithFrame:(NSRect)frame {
  self = [super initWithFrame:frame];
  if (self) {
    // Initialization code here.
  }
  return self;
}

- (void) awakeFromNib {
  [self setUpFrameRect];
  [self setUpImageView];
  [self setUpTextView];
}

@end
