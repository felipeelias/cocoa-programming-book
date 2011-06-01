//
//  BrowserController.h
//  ControllerBrowser
//
//  Created by Felipe Elias Philipp on 01/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class WebView;

@interface BrowserController : NSObject {
	WebView *myWebView;
	NSTextField *address;
	NSButton *backButton;
	NSButton *forwardButton;
	NSProgressIndicator *spinner;
}

@property (assign) IBOutlet WebView *myWebView;
@property (assign) IBOutlet NSTextField *address;
@property (assign) IBOutlet NSButton *backButton;
@property (assign) IBOutlet NSButton *forwardButton;
@property (assign) IBOutlet NSProgressIndicator *spinner;

@end
