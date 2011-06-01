//
//  HelloWorldProAppDelegate.h
//  HelloWorldPro
//
//  Created by Felipe Elias Philipp on 01/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface HelloWorldProAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
	NSTextField *textField;
}

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSTextField *textField;

@end
