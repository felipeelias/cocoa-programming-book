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

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	Greeter *host = [[Greeter alloc] initWithName:@"Maggie"];
	NSLog(@"Greeter %@", host);
}

@end
