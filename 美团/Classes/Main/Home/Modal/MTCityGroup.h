//
//  MTCityGroup.h
//  美团
//
//  Created bySaiDicaprio. on 15/6/4.
//  Copyright (c) 2015年 SaiDicaprio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MTCityGroup : NSObject

/** 这组的标题 */
@property (nonatomic, copy) NSString *title;
/** 这组的所有城市 */
@property (nonatomic, strong) NSArray *cities;

@end
