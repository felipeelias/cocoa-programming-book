//
//  Bookshelf.m
//  BookshelfWithBindings
//
//  Created by Felipe Elias Philipp on 05/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Bookshelf.h"


@implementation Bookshelf

@synthesize bookList;

-(void) awakeFromNib {
  self.bookList = [NSMutableArray arrayWithCapacity:1];
}

@end
