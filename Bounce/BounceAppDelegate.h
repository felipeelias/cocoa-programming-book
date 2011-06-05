//
//  BounceAppDelegate.h
//  Bounce
//
//  Created by Felipe Elias Philipp on 05/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface BounceAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
  NSSet *retrievedSet;
}

@property (readonly) NSSet *retrievedSet;
@property (assign) IBOutlet NSWindow *window;

@end
