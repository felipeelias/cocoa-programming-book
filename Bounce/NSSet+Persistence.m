//
//  NSSet+Persistence.m
//  Bounce
//
//  Created by Felipe Elias Philipp on 05/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NSSet+Persistence.h"


@implementation NSSet(Persistence)

+ (id) setWithContentsOfFile:(NSString *)path {
  return [NSSet setWithArray:[NSArray arrayWithContentsOfFile:path]];
}

- (BOOL) writeToFile:(NSString *)path atomically:(BOOL)flag {
  NSMutableArray *temp = [NSMutableArray arrayWithCapacity:self.count];
  for (id element in self) {
    [temp addObject:element];
  }
  return [temp writeToFile:path atomically:YES];
}

@end
