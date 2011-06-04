//
//  BookshelfController.m
//  Bookshelf
//
//  Created by Felipe Elias Philipp on 04/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "BookshelfController.h"
#import "PragBook.h"

@implementation BookshelfController

@synthesize book;

- (NSInteger) numberOfRowsInTableView:(NSTableView *)table {
  return [self.book.chapters count];
}

- (id)tableView:(NSTableView *)aTableView objectValueForTableColumn:(NSTableColumn *)aTableColumn row:(NSInteger)rowIndex {
  return [[self.book.chapters objectAtIndex:rowIndex] valueForKey:[aTableColumn identifier]];
}

- (PragBook *) book {
  if (!book) {
    self.book = [[PragBook alloc] init];
    NSDictionary *bookInfo = [NSDictionary dictionaryWithObjectsAndKeys:@"Manage Your Project Portifolio", @"title", @"Johanna Rothman", @"author", nil];
    [self.book setValuesForKeysWithDictionary:bookInfo];
  }
  return book;
}

@end