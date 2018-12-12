//
//  UIScreen+LJ.h
//
//  Created by yuliangjian on 2017/11/15.
//  Copyright © 2017年 LiuXing. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIScreen (LJ)

/**
 *  判断是否是刘海屏手机
 */
+ (BOOL)lj_isFringeScreeniPhone;

/**
 *  获取安全区域到顶部的距离(包括导航栏)
 */
+ (CGFloat)lj_safeAreaToTop;

/**
 *  获取安全区域到顶部的距离(不包括导航栏)
 */
+ (CGFloat)lj_safeAreaToTopWithoutNavi;

/**
 *  获取安全区域到底部的距离(包括TabBar)
 */
+ (CGFloat)lj_safeAreaToBottom;

/**
 *  获取安全区域到底部的距离(不包括TabBar)
 */
+ (CGFloat)lj_safeAreaToBottomWithoutTabBar;

/**
 *  获取屏幕的宽度
 */
+ (CGFloat)lj_screenWidth;

/**
 *  获取屏幕的高度
 */
+ (CGFloat)lj_screenHeight;




@end
