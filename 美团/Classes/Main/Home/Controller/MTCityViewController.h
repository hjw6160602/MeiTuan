//
//  MTCityViewController.h
//  美团
//
//  Created by shoule on 15/6/4.
//  Copyright (c) 2015年 SaiDicaprio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIBarButtonItem+Extension.h"
#import "MTCityGroup.h"
#import "MJExtension.h"
#import "UIView+AutoLayout.h"
#import "MTCitySearchResultViewController.h"

@interface MTCityViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate>

@property (nonatomic, strong) NSArray *cityGroups;
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIButton *cover;

- (IBAction)coverClick;

@property (nonatomic, weak) MTCitySearchResultViewController *citySearchResult;

@end
