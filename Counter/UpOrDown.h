//
//  UpOrDown.h
//  Counter
//
//  Created by Felipe Elias Philipp on 04/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface UpOrDown : NSObject {
  NSNumber *countOne, *countTwo, *totalCount;
}

@property (copy) NSNumber *countOne, *countTwo, *totalCount;

- (IBAction) stepOne: (id) sender;
- (IBAction) stepTwo: (id) sender;

@end
