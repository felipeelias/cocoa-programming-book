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

@synthesize valueField, keyField, book;

- (IBAction) getValue: (id) sender {
  [self.valueField setStringValue:[self.book valueForKeyPath:[sender stringValue]]];
}

- (IBAction) setValue: (id) sender {
  [self.book setValue:[sender stringValue] 
           forKeyPath:[self.keyField stringValue]];
}

- (PragBook *) book {
  if (!book) {
    self.book = [[PragBook alloc] init];
    NSDictionary *bookInfo = [NSDictionary dictionaryWithObjectsAndKeys:@"Manage Your Project Portifolio", @"title", @"Johanna Rothman", @"author", nil];
    [self.book setValuesForKeysWithDictionary:bookInfo];
    [self.book setValue:@"Preface" 
             forKeyPath:@"chapter.title"];
    [self setValue:[NSNumber numberWithInt:4] 
        forKeyPath:@"book.chapter.pageCount"];
  }
  return book;
}

@end
