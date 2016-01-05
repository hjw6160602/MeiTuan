//
//  MTHomeDropdown.h
//  美团HD
//  美团
//
//  Created by SaiDicaprio. on 15/6/4.
//  Copyright (c) 2015年 SaiDicaprio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MTCategory.h"

@interface MTHomeDropdown : UIView

@property (weak, nonatomic) IBOutlet UITableView *mainTableView;
@property (weak, nonatomic) IBOutlet UITableView *subTableView;

@property (nonatomic, strong) MTCategory *seledtedCategory;
@property (nonatomic, strong) NSArray *categories;

+ (instancetype)dropdown;
@end
