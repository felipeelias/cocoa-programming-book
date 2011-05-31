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

- (Greeter *) greeterFor:(NSString *) personName {
	return [[Greeter alloc] initWithName:personName];
}

-(void) setUpperCaseName:(Greeter *) greeter {
	NSLog(@"The name originally was %@", [greeter name]);
	[greeter setName:[[greeter name] uppercaseString]];
	NSLog(@"The name is now %@", [greeter name]);
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	Greeter *greeter = [self greeterFor:@"Maggie"];
	NSLog(@"Greeter: %@", greeter);
	NSLog(@"This error occurred in %@ at line %d in files %s", NSStringFromSelector(_cmd), __LINE__, __FILE__);
	NSTextField *label = [self labelWithText:[greeter greeting]];
	[self setUpperCaseName:greeter];
	[[self.window contentView] addSubview:label];
}

@end
