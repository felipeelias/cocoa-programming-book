//
//  IconView.h
//  HelloApplication
//
//  Created by Felipe Elias Philipp on 03/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface IconView : NSView {
  NSColor *alertColor;
  NSRect frameRect;
}

@property (copy) NSColor *alertColor;

@end
