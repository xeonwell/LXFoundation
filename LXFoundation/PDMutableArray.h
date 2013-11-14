//
//  PDMutableArray.h
//  PDFoundation
//
//  Created by xeonwell on 13-11-14.
//  Copyright (c) 2013年 XeonWellStudio, Inc. All rights reserved.
//

#import "LXMutableArray.h"

/*!
 @brief 添加了class限制，将数据类型限制为同一种类型
 */
@interface PDMutableArray : LXMutableArray

/*!
 @brief     根据给定数量以及类型来创建可变数组
 @param numItems The initial capacity of the new array.
 @return    A new NSMutableArray object with enough allocated memory to hold numItems objects.
 @param type 数据类型
 */
+ (instancetype)arrayWithCapacity:(NSUInteger)numItems Type:(Class)type;

/*!
 @brief     <#abstract#>
 @param     <#param#> <#param description#>
 @param     <#param#> <#param description#>
 @return    <#return#>
 */
- (id)initWithCapacity:(NSUInteger)numItems Type:(Class)type;

/*!
 @brief     数组中存储的数据类型
 */
@property (nonatomic, assign) Class type;

- (id)objectAtIndexedSubscript:(NSUInteger)idx;
- (void)setObject:(id)obj atIndexedSubscript:(NSUInteger)idx;

@end
