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
}

@property (assign) IBOutlet WebView *myWebView;
@property (assign) IBOutlet NSTextField *address;

-(IBAction) loadPreviousPage: (id) sender;
-(IBAction) loadNextPage: (id) sender;
-(IBAction) loadUrlFrom: (id) sender;

@end
