//
//  HelloWorldAppDelegate.m
//  HelloWorld
//
//  Created by Felipe Elias Philipp on 25/05/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HelloWorldAppDelegate.h"

@implementation HelloWorldAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	NSRect labelLocation = NSMakeRect(20, 20, 540, 50);
	NSTextField *label = [[NSTextField alloc] initWithFrame:labelLocation];
	[label setStringValue:@"Hello World"];
	[[self.window contentView] addSubview:label];
}

@end
