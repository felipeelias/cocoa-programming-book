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

- (void) createReport {
  NSLog(@"There are %@ chapters.", [self valueForKeyPath:@"book.chapters.@count"]);
  NSLog(@"The titles are: %@", [self.book.chapters valueForKey:@"title"]);
  NSLog(@"This book has %@ pages so far.", [self.book valueForKeyPath:@"chapters.@sum.pageCount"]);
  NSLog(@"The longest chapter is %@ pages long.", [self valueForKeyPath:@"book.chapters.@max.pageCount"]);
  NSLog(@"The average chapter length is %@.", [self.book.chapters valueForKeyPath:@"@avg.pageCount"]);
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
