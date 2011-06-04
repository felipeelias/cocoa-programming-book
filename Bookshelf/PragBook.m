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

@synthesize title, author, chapters;

- (id) valueForUndefinedKey:(NSString *)key {
  return [NSString stringWithFormat:@"No property for key %@", key];
}

- (id) init {
  if (self = [super init]) {
    self.chapters = [[NSArray alloc] initWithObjects: [Chapter chapterWithTitle:@"Preface" pageCount:3], 
                     [Chapter chapterWithTitle:@"Meet Your Project Portfolio" pageCount:12], 
                     [Chapter chapterWithTitle:@"Create Your First Draft" pageCount:10], 
                     [Chapter chapterWithTitle:@"Evaluate Your Projects" pageCount:14], 
                     [Chapter chapterWithTitle:@"Rank the Portfolio" pageCount:20], nil];
  }
  return self;
}

@end
