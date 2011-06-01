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

@synthesize myWebView, address;

-(IBAction) loadPreviousPage: (id) sender {
	[self.myWebView goBack:sender];
}

-(IBAction) loadNextPage: (id) sender {
	[self.myWebView goForward:sender];
}

-(IBAction) loadUrlFrom: (id) sender {
	[self.myWebView takeStringURLFrom:sender];
}

-(void) awakeFromNib {
	[self.address setStringValue:@"http://google.com"];
	[self loadUrlFrom:self.address];
}

@end
