//
//  PragBook.h
//  CDBookshelf
//
//  Created by Felipe Elias Philipp on 07/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <CoreData/CoreData.h>


@interface PragBook :  NSManagedObject  
{
}

@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSSet* authors;
@property (nonatomic, retain) NSSet* chapters;

@end


@interface PragBook (CoreDataGeneratedAccessors)
- (void)addAuthorsObject:(NSManagedObject *)value;
- (void)removeAuthorsObject:(NSManagedObject *)value;
- (void)addAuthors:(NSSet *)value;
- (void)removeAuthors:(NSSet *)value;

- (void)addChaptersObject:(NSManagedObject *)value;
- (void)removeChaptersObject:(NSManagedObject *)value;
- (void)addChapters:(NSSet *)value;
- (void)removeChapters:(NSSet *)value;

@end

