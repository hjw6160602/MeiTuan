//
//  MTRegion.h
//  美团
//
//  Created bySaiDicaprio. on 15/6/9.
//  Copyright (c) 2015年 SaiDicaprio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MTRegion : NSObject
/** 区域名字 */
@property (nonatomic, copy) NSString *name;
/** 子区域 */
@property (nonatomic, strong) NSArray *subregions;
@end
