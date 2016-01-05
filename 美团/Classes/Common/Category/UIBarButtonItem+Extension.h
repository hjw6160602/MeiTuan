//
//  UIBarButtonItem+Extension.h
//  HJWCategory
//
//  Created by SaiDicaprio. on 15/6/3.
//  Copyright (c) 2015年 SaiDicaprio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)

+ (UIBarButtonItem *)itemWithTarget:(id)target
                             action:(SEL)action
                              image:(NSString *)image
                   highLightedImage:(NSString *)highLightedImage;
@end

