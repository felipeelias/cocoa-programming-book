//
//  HelloWorldProAppDelegate.m
//  HelloWorldPro
//
//  Created by Felipe Elias Philipp on 01/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HelloWorldProAppDelegate.h"

@implementation HelloWorldProAppDelegate

@synthesize window, textField, button;

- (void) personalize {
	self.window.backgroundColor = [NSColor redColor];
	[self.textField setStringValue:[NSString stringWithFormat:@"Hello, %@!", NSFullUserName()]];
	[self.button setTitle:@"Generalize"];
	isPersonalized = YES;
}

- (void) generalize {
	self.window.backgroundColor = [NSColor greenColor];
	[self.textField setStringValue:@"Hello World!"];
	[self.button setTitle:@"Personalize"];
	isPersonalized = NO;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	[self generalize];
}

- (IBAction) changeGreeting: (id) sender {
	[self performSelector:NSSelectorFromString([[self.button title] lowercaseString])];
}

@end
