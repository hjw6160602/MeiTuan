//
//  Const.h
//  新浪微博
//
//  Created by SaiDicaprio on 16/1/5.
//  Copyright (c) 2015年 SaiDicaprio. All rights reserved.
//

#ifndef _____Const_h
#define _____Const_h

#pragma mark - 日志输出
#ifdef DEBUG
/** 调试状态 打开LOG功能 */
#define MTLog(...) NSLog(__VA_ARGS__)
#else
/** 发布状态 关闭LOG功能 */
#define MTLog(...)
#endif

#pragma mark - 功能性函数
/** 全局颜色 */
#define HJW_GLOBLE_BG HJWColor(230, 230, 230)
/** 颜色 */
#define HJWColor(R, G, B) [UIColor colorWithRed:(R)/255.0 green:(G)/255.0 blue:(B)/255.0 alpha:1.0]
/** 随机色 */
#define HJWRandomColor HJWColor(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256))

#pragma mark - 宏
/** 屏幕宽高 */
#define SCREEN_FRAME    [UIScreen mainScreen].bounds
#define SCREEN_HEIGHT   [UIScreen mainScreen].bounds.size.height
#define SCREEN_WIDTH    [UIScreen mainScreen].bounds.size.width
/** 沙盒缓存路径 */
#define DOC_PATH            [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)firstObject]
/** 全局单例 */
#define SINGLE              [Singleton sharedInstance]
/** 全局单例 [NSUserDefaults standardUserDefaults] */
#define USER_DEFAULT        [NSUserDefaults standardUserDefaults]
/** 通知中心 */
#define NOTI_CENTER         [NSNotificationCenter defaultCenter]
/** KeyWindow [UIApplication sharedApplication].keyWindow */
#define KEY_WINDOW          [UIApplication sharedApplication].keyWindow
/** Cell复用标识 */
#define CELL     @"cell"

#endif
