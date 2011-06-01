//
//  BrowserController.m
//  ControllerBrowser
//
//  Created by Felipe Elias Philipp on 01/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "BrowserController.h"
#import <WebKit/WebKit.h>

@implementation BrowserController

@synthesize myWebView, address, backButton, forwardButton, spinner;

-(void) resetButtons {
	[self.backButton setEnabled:[self.myWebView canGoBack]];
	[self.forwardButton setEnabled:[self.myWebView canGoForward]];
}

-(void) awakeFromNib {
	[self.address setStringValue:@"http://google.com"];
	[self.myWebView takeStringURLFrom:self.address];
}

-(void) webView:(WebView *)sender 
didReceiveTitle:(NSString *)title 
	   forFrame:(WebFrame *)frame {
	[[sender window] setTitle:title];
}

- (void)webView:(WebView *)sender didFinishLoadForFrame:(WebFrame *)frame {
	[self.address setStringValue:[sender mainFrameURL]];
	[self.spinner stopAnimation:self];
	[self resetButtons];
}

- (void)webView:(WebView *)sender didStartProvisionalLoadForFrame:(WebFrame *)frame {
	[self.spinner startAnimation:self];
}

@end
