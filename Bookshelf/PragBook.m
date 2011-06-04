//
//  PragBook.m
//  Bookshelf
//
//  Created by Felipe Elias Philipp on 04/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PragBook.h"
#import "Chapter.h"

@implementation PragBook

@synthesize title, author, chapter;

- (id) valueForUndefinedKey:(NSString *)key {
  return [NSString stringWithFormat:@"No property for key %@", key];
}

- (id) init {
  if (self = [super init]) {
    self.chapter = [[Chapter alloc] init];
  }
  return self;
}

@end
