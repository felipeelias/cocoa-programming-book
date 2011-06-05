//
//  BookshelfWithBindingsAppDelegate.h
//  BookshelfWithBindings
//
//  Created by Felipe Elias Philipp on 05/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface BookshelfWithBindingsAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
