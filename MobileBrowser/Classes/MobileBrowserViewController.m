//
//  MobileBrowserViewController.m
//  MobileBrowser
//
//  Created by Felipe Elias Philipp on 01/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MobileBrowserViewController.h"

@implementation MobileBrowserViewController

@synthesize webView, address, backButton, forwardButton, activity;

#pragma mark Helper methods

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

#pragma mark Initialization

- (void) viewDidLoad {
	[super viewDidLoad];
	self.address.text = @"http://google.com";
	[self loadURLFromTextField];
}

#pragma mark WebView delegate methods

-(void)webViewDidStartload:(UIWebView *)theWebView {
	[self.activity startAnimating];
	[self disableWebView];
}

-(void)webViewDidFinishLoad:(UIWebView *)theWebView {
	[self enableWebView];
	[self.activity stopAnimating];
	[self resetButtons:theWebView];
	self.address.text = [[self.webView.request URL] absoluteString];
}

#pragma mark Text Field delegate methods

-(void)textFieldDidBeginEditing:(UITextField *)textField {
	[self disableWebView];
}

-(BOOL) textFieldShouldReturn:(UITextField *)textField {
	[self loadURLFromTextField];
	[textField resignFirstResponder];
	return YES;
}

#pragma mark Memory Management

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)dealloc {
	self.webView = nil;
	self.address = nil;
	self.backButton = nil;
	self.forwardButton = nil;
	self.activity = nil;
    [super dealloc];
}

@end
