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

- (void) createLabel {
  NSRect labelFrame = NSMakeRect(20, 20, 540, 50);
	NSTextField *label = [[NSTextField alloc] initWithFrame:labelFrame];
	[label setEditable:NO];
	[label setSelectable:NO];
	[label setAlignment:NSCenterTextAlignment];
	[label setFont:[NSFont boldSystemFontOfSize:36]];
	[label setStringValue:@"Hello World"];
	[[self.window contentView] addSubview:label];

}
- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	[self createLabel];

}

@end
