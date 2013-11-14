//
//  PDMutableArray.m
//  PDFoundation
//
//  Created by xeonwell on 13-11-14.
//  Copyright (c) 2013年 XeonWellStudio, Inc. All rights reserved.
//

#import "PDMutableArray.h"

@implementation PDMutableArray

//- (void)setType:(Class)type
//{
//    _type = type;
//    if (_type != NULL && self.count > 0)
//    {
//        NSInteger count = self.count;
//        while (--count > 0)
//        {
//            if (![self[count] isKindOfClass:_type])
//            {
//                [self removeObjectAtIndex:count--];
//            }
//        }
//    }
//}

+ (instancetype)arrayWithCapacity:(NSUInteger)numItems Type:(Class)type
{
    return [[self alloc] initWithCapacity:numItems Type:type];
}

- (id)initWithCapacity:(NSUInteger)numItems Type:(Class)type;
{
    self = [super initWithCapacity:numItems];
    if (self)
    {
        self.type = type;
    }
    return self;
}

- (void)addObject:(id)anObject
{
    if (_type == NULL || (_type != NULL && [anObject isKindOfClass:_type]))
        [super addObject:anObject];
}

- (void)insertObject:(id)anObject atIndex:(NSUInteger)index
{
    if (_type == NULL || (_type != NULL && [anObject isKindOfClass:_type]))
        [super insertObject:anObject atIndex:index];
}

- (void)replaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject
{
    if (_type == NULL || (_type != NULL && [anObject isKindOfClass:_type]))
        [super replaceObjectAtIndex:index withObject:anObject];
}

- (void)setObject:(id)obj atIndexedSubscript:(NSUInteger)idx
{
    return [self replaceObjectAtIndex:idx withObject:obj];
}

- (id)objectAtIndexedSubscript:(NSUInteger)idx
{
    return [self objectAtIndex:idx];
}

@end


