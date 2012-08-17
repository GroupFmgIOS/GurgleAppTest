//
//  NSDictionary+MutableDeepCopy.m
//  GlossaryItems
//
//  Created by Dhanasekar Gunabalan on 6/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "NSDictionary+MutableDeepCopy.h"

@implementation NSDictionary (MutableDeepCopy)

- (NSMutableDictionary *)mutableDeepCopy {
	NSMutableDictionary *deepCopy = [[NSMutableDictionary alloc] initWithCapacity:[self count]];
	NSArray *keys = [self allKeys];
	
	for (id key in keys) {
		id oneValue = [self objectForKey:key];
		id oneCopy = nil;
		
		if ([oneValue respondsToSelector:@selector(mutableDeepCopy)]) {
			oneCopy = [oneValue mutableDeepCopy];
		} else if ([oneValue respondsToSelector:@selector(mutableCopy)]) {
			oneCopy = [oneValue mutableCopy];
		}
		
		if (oneCopy == nil) {
			oneCopy = [oneValue copy];
		}
		
		[deepCopy setValue:oneCopy forKey:key];
	}
	
	return deepCopy;
}


@end
