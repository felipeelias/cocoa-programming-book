//
//  MobileBrowserViewController.h
//  MobileBrowser
//
//  Created by Felipe Elias Philipp on 01/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MobileBrowserViewController : UIViewController <UITextFieldDelegate> {
	UIWebView *webView;
	UITextField *address;
	UIBarButtonItem *backButton;
	UIBarButtonItem *forwardButton;
	UIActivityIndicatorView *activity;
}

@property (nonatomic, retain) IBOutlet UIWebView *webView;
@property (nonatomic, retain) IBOutlet UITextField *address;
@property (nonatomic, retain) IBOutlet UIBarButtonItem *backButton;
@property (nonatomic, retain) IBOutlet UIBarButtonItem *forwardButton;
@property (nonatomic, retain) IBOutlet UIActivityIndicatorView *activity;

@end

