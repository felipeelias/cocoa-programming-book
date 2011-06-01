//
//  MobileBrowserViewController.m
//  MobileBrowser
//
//  Created by Felipe Elias Philipp on 01/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MobileBrowserViewController.h"

@implementation MobileBrowserViewController

@synthesize webView, address, backButton, forwardButton;

-(void) disableWebView { 
	self.webView.userInteractionEnabled = NO;
	self.webView.alpha = 0.25;
}

-(void) enableWebView {
	self.webView.userInteractionEnabled = YES;
	self.webView.alpha = 1.0;
}

- (void) loadURLFromTextField {
	NSURL *url = [NSURL URLWithString:self.address.text];
	NSURLRequest *request = [NSURLRequest requestWithURL:url];
	[self.webView loadRequest:request];
}

-(void) resetButtons:(UIWebView *) theWebView { 
	[self.backButton setEnabled:[theWebView canGoBack]]; 
	[self.forwardButton setEnabled:[theWebView canGoForward]];
} 

-(void)webViewDidFinishLoad:(UIWebView *)theWebView {
	[self resetButtons:theWebView];
}

-(BOOL) textFieldShouldReturn:(UITextField *)textField {
	[self loadURLFromTextField];
	[textField resignFirstResponder];
	[self enableWebView];
	return YES;
}

- (void) viewDidLoad {
	[super viewDidLoad];
	self.address.text = @"http://google.com";
	[self loadURLFromTextField];
}

-(void)textFieldDidBeginEditing:(UITextField *)textField {
	[self disableWebView];
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
