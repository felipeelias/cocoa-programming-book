//
//  HelloApplicationAppDelegate.h
//  HelloApplication
//
//  Created by Felipe Elias Philipp on 01/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class ActivityController;

@interface HelloApplicationAppDelegate : NSObject <NSApplicationDelegate> {
  NSWindow *window;
  ActivityController *ac;
}

@property IBOutlet NSWindow *window;
@property IBOutlet ActivityController *ac;

@end
