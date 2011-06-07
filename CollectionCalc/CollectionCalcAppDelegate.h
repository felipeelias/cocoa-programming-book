//
//  CollectionCalcAppDelegate.h
//  CollectionCalc
//
//  Created by Felipe Elias Philipp on 07/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

typedef NSNumber *(^ArithmeticOperation)(NSNumber *, NSInteger);

@interface CollectionCalcAppDelegate : NSObject <NSApplicationDelegate> {
  NSWindow *window;
  ArithmeticOperation multiply, add;
}

@property (assign) IBOutlet NSWindow *window;
@property (copy) ArithmeticOperation multiply, add;

@end
