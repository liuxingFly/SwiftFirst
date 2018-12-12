//
//  UIScreen+LJ.m
//
//  Created by yuliangjian on 2017/11/15.
//  Copyright © 2017年 LiuXing. All rights reserved.
//

#import "UIScreen+LJ.h"

@implementation UIScreen (LJ)

/**
 *  判断是否是刘海屏手机
 */
+ (BOOL)lj_isFringeScreeniPhone {
    //判断是否是手机设备
    if (UIDevice.currentDevice.userInterfaceIdiom != UIUserInterfaceIdiomPhone) {
        return NO;
    }
    if (@available(iOS 11.0, *)) {
        UIEdgeInsets deviceSafeAreaInsets = [UIApplication sharedApplication].keyWindow.safeAreaInsets;
        //不考虑越狱,刘海屏手机系统都是iOS11以后
        if (deviceSafeAreaInsets.top == 44) {
            return YES;
        }
    }
    return NO;
}

/**
 *  获取安全区域到顶部的距离(包括导航栏)
 */
+ (CGFloat)lj_safeAreaToTop {
    CGFloat height = 64.0;
    if ([UIScreen lj_isFringeScreeniPhone]) {
        height = 88.0;
    }
    return height;
}

/**
 *  获取安全区域到顶部的距离(不包括导航栏)
 */
+ (CGFloat)lj_safeAreaToTopWithoutNavi {
    CGFloat height = 20.0;
    if ([UIScreen lj_isFringeScreeniPhone]) {
        height = 44.0;
    }
    return height;
}

/**
 *  获取安全区域到底部的距离(包括TabBar)
 */
+ (CGFloat)lj_safeAreaToBottom {
    CGFloat height = 49.0;
    if ([UIScreen lj_isFringeScreeniPhone]) {
        height = 83.0;
    }
    return height;
}

/**
 *  获取安全区域到底部的距离(不包括TabBar)
 */
+ (CGFloat)lj_safeAreaToBottomWithoutTabBar {
    CGFloat height = 0.0;
    if ([UIScreen lj_isFringeScreeniPhone]) {
        height = 34.0;
    }
    return height;
}

/**
 *  获取屏幕的宽度
 */
+ (CGFloat)lj_screenWidth {
    return [UIScreen mainScreen].bounds.size.width;
}

/**
 *  获取屏幕的高度
 */
+ (CGFloat)lj_screenHeight {
    return [UIScreen mainScreen].bounds.size.height;
}


@end
