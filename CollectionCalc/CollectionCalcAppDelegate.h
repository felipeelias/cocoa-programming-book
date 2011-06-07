//
//  CollectionCalcAppDelegate.h
//  CollectionCalc
//
//  Created by Felipe Elias Philipp on 07/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface CollectionCalcAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
  NSNumber *(^multiply)(NSNumber *, NSInteger);
}

@property (assign) IBOutlet NSWindow *window;
@property (copy) NSNumber *(^multiply)(NSNumber *, NSInteger);

@end
