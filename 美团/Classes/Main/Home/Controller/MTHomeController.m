//
//  MTHomeControllerl.m
//  美团
//
//  Created by shoule on 15/6/4.
//  Copyright (c) 2015年 SaiDicaprio. All rights reserved.
//

#import "MTHomeController.h"
#import "MJExtension.h"
#import "MTHomeTopItem.h"
#import "MTCategoryController.h"
#import "MTDistrictViewController.h"
#import "UIBarButtonItem+Extension.h"
#import "UIView+Extension.h"
#import "MTConst.h"

@interface MTHomeController()
/** 分类item */
@property (nonatomic, weak) UIBarButtonItem *categoryItem;
/** 地区item */
@property (nonatomic, weak) UIBarButtonItem *districtItem;
/** 排序item */
@property (nonatomic, weak) UIBarButtonItem *sortItem;

@property (nonatomic, strong) UIPopoverController *popover;
@end

@implementation MTHomeController

static NSString * const reuseIdentifier = @"Cell";

- (instancetype)init
{
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    return [self initWithCollectionViewLayout:layout];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initControls];
    
    // 设置导航栏内容
    [self initLeftNavi];
    [self initRightNavi];
}

- (void)initControls{
    // 设置背景色
    self.collectionView.backgroundColor = HJW_GLOBLE_BG;
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
}

#pragma mark - 设置导航栏内容
/** 初始化左边边控制器的导航栏内容*/
- (void)initLeftNavi{
    // 1.LOGO
    UIBarButtonItem *LOGO = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"icon_meituan_logo"] style:UIBarButtonItemStyleDone target:nil action:nil];
    LOGO.enabled = NO;//不让选择与点击
    
    // 2.类别
    MTHomeTopItem *categoryTopItem = [MTHomeTopItem item];
    [categoryTopItem addTarget:self action:@selector(categoryOnClick)];
    UIBarButtonItem *categoryItem = [[UIBarButtonItem alloc] initWithCustomView:categoryTopItem];
    self.categoryItem = categoryItem;
    
    // 3.地区
    MTHomeTopItem *districtTopItem = [MTHomeTopItem item];
    [districtTopItem addTarget:self action:@selector(districtOnClick)];
    UIBarButtonItem *districtItem = [[UIBarButtonItem alloc] initWithCustomView:districtTopItem];
    self.districtItem = districtItem;
    
    // 4.排序
    MTHomeTopItem *sortTopItem = [MTHomeTopItem item];
    [sortTopItem addTarget:self action:@selector(sortOnClick)];
    UIBarButtonItem *sortItem = [[UIBarButtonItem alloc] initWithCustomView:sortTopItem];
    self.sortItem = sortItem;
    
    self.navigationItem.leftBarButtonItems = @[LOGO,categoryItem,districtItem,sortItem];
}

/** 初始化右边控制器的导航栏内容*/
- (void)initRightNavi{
    //0. 创建一个地图定位的button，并设置为barBtnItem
    UIBarButtonItem *mapItem = [UIBarButtonItem itemWithTarget:nil action:nil image:@"icon_map" highLightedImage:@"icon_map_highlighted"];
    //设置地图定位Item的宽度，来控制两个Item之间的距离
    mapItem.customView.width = 60;
    
    //1. 创建一个搜索的button，并设置为barBtnItem
    UIBarButtonItem *searchItem = [UIBarButtonItem itemWithTarget:nil action:nil image:@"icon_search" highLightedImage:@"icon_search_highlighted"];
    //设置搜索Item的宽度，来控制两个Item之间的距离
    searchItem.customView.width = 60;
    self.navigationItem.rightBarButtonItems = @[mapItem, searchItem];
}

#pragma mark - <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 0;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 0;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    return cell;
}

#pragma mark - Actions
- (void)categoryOnClick{
     // 显示分类菜
    UIPopoverController *popOver = [[UIPopoverController alloc]initWithContentViewController:[MTCategoryController new]];
    //PopoverController需要用到一个Item指针，所以需要在self.categoryItem中提前存起来
    [popOver presentPopoverFromBarButtonItem:self.categoryItem
                    permittedArrowDirections:UIPopoverArrowDirectionAny
                                    animated:YES];
}

- (void)districtOnClick{
    UIPopoverController *popOver = [[UIPopoverController alloc]initWithContentViewController:[MTDistrictViewController new]];
    [popOver presentPopoverFromBarButtonItem:self.districtItem
                    permittedArrowDirections:UIPopoverArrowDirectionAny
                                    animated:YES];
}

- (void)sortOnClick{
    MTLog(@"sortOnClick");
}


#pragma mark <UICollectionViewDelegate>
/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
}
*/

@end
