//
//  SimpleBrowserAppDelegate.h
//  SimpleBrowser
//
//  Created by Felipe Elias Philipp on 24/05/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface SimpleBrowserAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
