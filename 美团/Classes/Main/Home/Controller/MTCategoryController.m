//
//  MTCategoryController.m
//  美团
//
//  Created by shoule on 15/6/4.
//  Copyright (c) 2015年 SaiDicaprio. All rights reserved.
//

#import "MTCategoryController.h"
#import "MTHomeDropdown.h"
#import "UIView+Extension.h"
#import "Foundation+Log.h"
#import "MJExtension.h"

@implementation MTCategoryController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MTHomeDropdown *dropdown = [MTHomeDropdown dropdown];
    // 加载分类数据
    dropdown.categories = [MTCategory objectArrayWithFilename:@"categories.plist"];

    [self.view addSubview:dropdown];
    
    // 设置控制器view在popover中的尺寸
    self.preferredContentSize = dropdown.size;
    
//     iPad中控制器的view的尺寸默认都是1024x768, MTHomeDropdown的尺寸默认是300x340
//     MTCategoryViewController显示在popover中,尺寸变为480x320, MTHomeDropdown的尺寸也跟着减小:0x0
}


@end
