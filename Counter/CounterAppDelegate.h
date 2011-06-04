//
//  CounterAppDelegate.h
//  Counter
//
//  Created by Felipe Elias Philipp on 04/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class Display, Logger;

@interface CounterAppDelegate : NSObject <NSApplicationDelegate> {
  NSWindow *window;
  Display *display;
}

@property (assign) IBOutlet NSWindow *window;
@property IBOutlet Display *display;

@end
