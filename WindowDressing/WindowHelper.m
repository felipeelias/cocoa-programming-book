//
//  WindowHelper.m
//  WindowDressing
//
//  Created by Felipe Elias Philipp on 01/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "WindowHelper.h"


@implementation WindowHelper

- (BOOL) windowShouldClose: (id) sender {
	[sender setBackgroundColor:[NSColor redColor]];
	return NO;
}

- (BOOL) windowShouldZoom:(NSWindow *)window toFrame:(NSRect)newFrame {
	[window setBackgroundColor:[NSColor greenColor]];
	return NO;
}

@end
