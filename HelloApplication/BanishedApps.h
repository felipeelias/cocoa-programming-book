//
//  BanishedApps.h
//  HelloApplication
//
//  Created by Felipe Elias Philipp on 03/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface BanishedApps : NSObject {
  NSMutableArray *apps;
}

@property (retain) NSMutableArray *apps;

- (void) add:(NSRunningApplication *) app;
- (BOOL) contains:(NSRunningApplication *) app;

@end
