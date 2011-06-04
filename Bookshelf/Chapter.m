//
//  Chapter.m
//  Bookshelf
//
//  Created by Felipe Elias Philipp on 04/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Chapter.h"


@implementation Chapter

@synthesize title, pageCount;

- (id) valueForUndefinedKey:(NSString *)key {
  return [NSString stringWithFormat:@"No property for key %@", key];
}

@end
