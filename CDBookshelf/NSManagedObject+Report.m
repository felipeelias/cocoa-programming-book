//
//  NSManagedObject+Report.m
//  CDBookshelf
//
//  Created by Felipe Elias Philipp on 06/06/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NSManagedObject+Report.h"


@implementation NSManagedObject(Report)

-(void)PP_report {
  NSLog(@"%@",[self description]);
}

@end
