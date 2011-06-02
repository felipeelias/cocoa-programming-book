//
//  CurrentApp.m
//  HelloApplication
//
//  Created by Felipe Elias Philipp on 01/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CurrentApp.h"


@implementation CurrentApp

@synthesize delegate, app;

#pragma mark Utility methods

-(void) respondToChange: (NSNotification *) notification {
  SEL methodName = NSSelectorFromString([delegateMethods objectForKey:notification.name]);

  if ([self.delegate respondsToSelector:methodName]) {
    self.app = [notification.userInfo objectForKey:@"NSWorkspaceApplicationKey"];
    [self.delegate performSelector:methodName withObject:self.app];
  }
  NSLog(@"%@", runningApps);
}

#pragma mark Notification methods

-(void) applicationDidLaunch: (NSNotification *) notification {
  [runningApps setObject:[NSDate date] forKey:[notification.userInfo objectForKey:@"NSApplicationName"]];
  [self respondToChange:notification];
}

-(void) applicationDidTerminate: (NSNotification *) notification {
  [runningApps removeObjectForKey:[notification.userInfo objectForKey:@"NSApplicationName"]];
  [self respondToChange:notification];
}

- (void) setUpNotification:(NSString *)notification withSelector:(SEL)methodName {
	[[[NSWorkspace sharedWorkspace] notificationCenter] addObserver:self 
														   selector:methodName 
															   name:notification 
															 object:nil];
}

- (void) registerNotifications {
	[self setUpNotification:NSWorkspaceDidLaunchApplicationNotification 
			   withSelector:@selector(applicationDidLaunch:)];
	[self setUpNotification:NSWorkspaceDidTerminateApplicationNotification 
			   withSelector:@selector(applicationDidTerminate:)];
}

#pragma mark Initialization

- (void) initalizeMethodDictionary {
  delegateMethods = [[NSDictionary alloc] initWithObjectsAndKeys:
                     @"applicationDidLaunch:", 
                     NSWorkspaceDidLaunchApplicationNotification,
                     @"applicationDidTerminate:",
                     NSWorkspaceDidTerminateApplicationNotification,
                     nil];
}

- (id) init {
	if (self = [super init]) {
		[self registerNotifications];
    [self initalizeMethodDictionary];
    runningApps = [[NSMutableDictionary alloc] initWithCapacity:5];
	}
	return self;
}

@end
