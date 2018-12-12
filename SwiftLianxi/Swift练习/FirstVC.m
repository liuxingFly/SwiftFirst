//
//  FirstVC.m
//  Swift练习
//
//  Created by 于良建 on 2018/10/18.
//  Copyright © 2018年 LiuXing. All rights reserved.
//

#import "FirstVC.h"
#import "Swift练习-Swift.h"
#import "UIScreen+LJ.h"


@interface FirstVC ()

@end

@implementation FirstVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"OC页面1";
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(50, UIScreen.lj_safeAreaToTop, 100, 35);
    [btn setTitle:@"下一页" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(goSwiftVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    NSLog(@"%@", self.ocStr);
    
}

- (void)goSwiftVC {
    ThirdVC *vc = [[ThirdVC alloc] init];
    vc.swiftStr = @"从OC页面1到swift页面2";
    [self.navigationController pushViewController:vc animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
