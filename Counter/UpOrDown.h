//
//  UpOrDown.h
//  Counter
//
//  Created by Felipe Elias Philipp on 04/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class Display;

@interface UpOrDown : NSObject {
  IBOutlet Display *display;
}

- (IBAction) step: (id) sender;

@end
