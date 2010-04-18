//
//  TableSection.m
//  Catalog
//
//  Created by Andy Waite on 14/04/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "TableSection.h"


@implementation TableSection
@synthesize items, title;

- (void) addItem:(NSObject*)item{
	if (items == nil) {
		items = [NSMutableArray arrayWithObject:item];
		[items retain];
	} else {
		[items addObject:item];
	}
}

- (void) addItems:(NSArray*)theItems{
	for (NSObject *item in theItems){
		[self addItem:item];
	}
}

@end
