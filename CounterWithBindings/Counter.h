//
//  Counter.h
//  CounterWithBindings
//
//  Created by Felipe Elias Philipp on 05/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface Counter : NSObject {
  NSNumber *count;
}

@property (copy) NSNumber *count;

@end