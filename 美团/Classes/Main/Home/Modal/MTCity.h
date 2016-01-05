//
//  MTCity.h
//  美团
//
//  Created bySaiDicaprio. on 15/6/4.
//  Copyright (c) 2015年 SaiDicaprio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MTCity : NSObject

/** 城市名字 */
@property (nonatomic, copy) NSString *name;
/** 城市名字的拼音 */
@property (nonatomic, copy) NSString *pinYin;
/** 城市名字的拼音声母 */
@property (nonatomic, copy) NSString *pinYinHead;
/** 区域(存放的都是MTRegion模型) */
@property (nonatomic, strong) NSArray *regions;

@end
