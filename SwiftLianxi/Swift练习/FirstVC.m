//
//  FirstVC.m
//  Swift练习
//
//  Created by 于良建 on 2018/10/18.
//  Copyright © 2018年 LiuXing. All rights reserved.
//

#import "FirstVC.h"
#import "Swift练习-Swift.h"

@interface FirstVC ()

@end

@implementation FirstVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(50, 60, 100, 100)];
    view.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:view];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(nihaoa)];
    [self.view addGestureRecognizer:tap];
    
    NSString *ss;
    [[NSUserDefaults standardUserDefaults] setObject:ss forKey:@"key"];
    NSString *ss1 = [[NSUserDefaults standardUserDefaults] objectForKey:@"key"];
    NSLog(@"打印：%@, %@", ss1, [ss1 class]);
    
}

- (void)nihaoa {
    UIViewController *fff = [[ViewController alloc] init];
    [self.navigationController pushViewController:fff animated:YES];
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
