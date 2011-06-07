//
//  CallbackAppDelegate.m
//  Callback
//
//  Created by Felipe Elias Philipp on 07/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CallbackAppDelegate.h"

@implementation CallbackAppDelegate

@synthesize window;

- (void) registerWithBlock {
  observer = [[[NSNotificationCenter defaultCenter] addObserverForName:nil 
                                                    object:nil 
                                                     queue:nil 
                                                usingBlock: ^(NSNotification *notification) {
                                                  NSLog(@"Received: %@.", [notification name]);
                                                }] retain];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	[self registerWithBlock];
}

@end
