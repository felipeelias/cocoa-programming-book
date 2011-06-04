//
//  Display.h
//  Counter
//
//  Created by Felipe Elias Philipp on 04/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class UpOrDown;

@interface Display : NSObject {
  IBOutlet NSTextField *displayFieldOne, *displayFieldTwo;
  IBOutlet UpOrDown *counter;
}

@end
