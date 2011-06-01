//
//  HelloWorldProAppDelegate.m
//  HelloWorldPro
//
//  Created by Felipe Elias Philipp on 01/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HelloWorldProAppDelegate.h"

@implementation HelloWorldProAppDelegate

@synthesize window, textField;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	self.window.backgroundColor = [NSColor greenColor];
	[self.textField setStringValue:@"Hello World!"];
}

- (IBAction) changeGreeting: (id) sender {
	if (isPersonalized) {
		self.window.backgroundColor = [NSColor greenColor];
		[self.textField setStringValue:@"Hello World!"];
		[sender setTitle:@"Personalize"];
		isPersonalized = NO;
	} else {
		self.window.backgroundColor = [NSColor redColor];
		[self.textField setStringValue:[NSString stringWithFormat:@"Hello, %@!", NSFullUserName()]];
		[sender setTitle:@"Generalize"];
		isPersonalized = YES;
	}
}

@end
