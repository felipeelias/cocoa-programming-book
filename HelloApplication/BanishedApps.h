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
  NSString *dataFile;
}

@property (retain) NSMutableArray *apps;
@property (copy) NSString *dataFile;

- (void) add:(NSRunningApplication *) app;
- (BOOL) contains:(NSRunningApplication *) app;

@end
