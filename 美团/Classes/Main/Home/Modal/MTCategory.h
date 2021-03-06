//
//  MTCategory.h
//  美团
//
//  Created bySaiDicaprio. on 15/6/4.
//  Copyright (c) 2015年 SaiDicaprio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MTCategory : NSObject

/** 类别的名称 */
@property (nonatomic, copy) NSString *name;
/** 子类别:里面都是字符串(子类别的名称) */
@property (nonatomic, strong) NSArray *subcategories;
/** 显示在下拉菜单的小图标 */
@property (nonatomic, copy) NSString *small_highlighted_icon;
/** 缩略图 */
@property (nonatomic, copy) NSString *small_icon;
/** 显示在导航栏顶部的大图标 */
@property (nonatomic, copy) NSString *highlighted_icon;
/** icon图 */
@property (nonatomic, copy) NSString *icon;
/** 显示在地图上的图标 */
@property (nonatomic, copy) NSString *map_icon;

@end
