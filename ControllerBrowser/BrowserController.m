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

@synthesize myWebView;

-(IBAction) loadPreviousPage: (id) sender {
	[self.myWebView goBack:sender];
}

@end
