//
//  HelloWorldAppDelegate.m
//  HelloWorld
//
//  Created by Felipe Elias Philipp on 25/05/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HelloWorldAppDelegate.h"
#import "Greeter.h"

@implementation HelloWorldAppDelegate

@synthesize window;

- (NSTextField *) labelWithText: (NSString *) labelText {
	NSRect labelFrame = NSMakeRect(20, 20, 540, 50);
	NSTextField *label = [[NSTextField alloc] initWithFrame:labelFrame];
	[label setEditable:NO];
	[label setSelectable:NO];
	[label setAlignment:NSCenterTextAlignment];
	[label setFont:[NSFont boldSystemFontOfSize:36]];
	[label setStringValue:labelText];
	return label;
}

- (Greeter *) greeter {
	return [[Greeter alloc] init];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	Greeter *greeter = [self greeter];
	NSTextField *label = [self labelWithText:[greeter greeting]];
	[[self.window contentView] addSubview:label];
}

@end
