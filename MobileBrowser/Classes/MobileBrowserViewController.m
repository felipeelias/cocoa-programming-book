//
//  MobileBrowserViewController.m
//  MobileBrowser
//
//  Created by Felipe Elias Philipp on 01/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MobileBrowserViewController.h"

@implementation MobileBrowserViewController

@synthesize webView, address;

- (void) loadURLFromTextField {
	NSURL *url = [NSURL URLWithString:self.address.text];
	NSURLRequest *request = [NSURLRequest requestWithURL:url];
	[self.webView loadRequest:request];
}

- (void) viewDidLoad {
	[super viewDidLoad];
	self.address.text = @"http://google.com";
	[self loadURLFromTextField];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload {
}

- (void)dealloc {
    [super dealloc];
}

@end
