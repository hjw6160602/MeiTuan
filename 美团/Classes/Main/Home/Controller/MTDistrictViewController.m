//
//  MTDistrictViewController.m
//  美团
//
//  Created by shoule on 15/6/4.
//  Copyright (c) 2015年 SaiDicaprio. All rights reserved.
//

#import "MTDistrictViewController.h"
#import "MTHomeDropdown.h"
#import "UIView+Extension.h"
#import "MTCityViewController.h"
#import "MTNavigationController.h"

@implementation MTDistrictViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建下拉菜单
    UIView *title = [self.view.subviews firstObject];
    MTHomeDropdown *dropdown = [MTHomeDropdown dropdown];
    dropdown.y = title.height;
    [self.view addSubview:dropdown];
    
    // 设置控制器在popover中的尺寸
    self.preferredContentSize = CGSizeMake(dropdown.width, CGRectGetMaxY(dropdown.frame));
}

/**
 *  切换城市
 */
- (IBAction)changeCity {
    //新建一个城市控制器 其为导航控制器的根控制器
    MTCityViewController *City = [[MTCityViewController alloc] init];
    //新建一个自定义的导航控制器
    MTNavigationController *Navi = [[MTNavigationController alloc] initWithRootViewController:City];
    Navi.modalPresentationStyle = UIModalPresentationFormSheet;
    [self presentViewController:Navi animated:YES completion:nil];
}
@end
