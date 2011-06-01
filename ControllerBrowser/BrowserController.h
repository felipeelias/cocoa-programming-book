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
}

@property (assign) IBOutlet WebView *myWebView;

-(IBAction) loadPreviousPage: (id) sender;

@end
