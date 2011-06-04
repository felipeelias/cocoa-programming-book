//
//  Display.h
//  Counter
//
//  Created by Felipe Elias Philipp on 04/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface Display : NSObject {
  IBOutlet NSTextField *displayField;
}

- (void) updateDisplay: (NSNumber *) newValue;

@end
