//
//  MTCity.m
//  美团
//
//  Created bySaiDicaprio. on 15/6/4.
//  Copyright (c) 2015年 SaiDicaprio. All rights reserved.
//

#import "MTCity.h"
#import "MJExtension.h"
#import "MTRegion.h"

@implementation MTCity
- (NSDictionary *)objectClassInArray
{
    return @{@"regions" : [MTRegion class]};
}
@end
