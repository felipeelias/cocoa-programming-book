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

-(id) initWithTitle:(NSString *) chapterTitle pageCount: (int) count { 
  if (self=[super init]) {
    self.title = chapterTitle;
    self.pageCount = [NSNumber numberWithInt:count];
  }
  return self;
}

+ (id) chapterWithTitle: (NSString *) title pageCount: (int) count {
  return [[Chapter alloc] initWithTitle:title pageCount:count];
}



@end
