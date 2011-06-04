//
//  UpOrDown.h
//  Counter
//
//  Created by Felipe Elias Philipp on 04/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface UpOrDown : NSObject {
  NSNumber *count;
}

- (IBAction) step: (id) sender;

@end
