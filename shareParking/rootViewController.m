//
//  rootViewController.m
//  shareParking
//
//  Created by xiaoma on 16/3/7.
//  Copyright © 2016年 xiaoma. All rights reserved.
//

#import "rootViewController.h"
#import "MineViewController.h"
#import "MessageViewController.h"
#import "NearViewController.h"
#import "ParkingViewController.h"
#import "FirstViewController.h"
@interface rootViewController ()

@end

@implementation rootViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    
    //self.view.backgroundColor = [UIColor whiteColor];
   
    
    
    FirstViewController *firstVC = [[FirstViewController alloc]init];
    firstVC.tabBarItem.title = @"首页";
    firstVC.tabBarItem.image = [UIImage imageNamed:@"main_index_icon2.png"];
    UINavigationController *firstNv = [[UINavigationController alloc]initWithRootViewController:firstVC];
    
    NearViewController *nearVC = [[NearViewController alloc]init];
    nearVC.tabBarItem.title = @"附近";
    nearVC.tabBarItem.image = [UIImage imageNamed:@"near2.png"];
    UINavigationController *nearNv = [[UINavigationController alloc]initWithRootViewController:nearVC];
    
    
    ParkingViewController *parkVC = [[ParkingViewController alloc]init];
    parkVC.tabBarItem.title = @"我要停车";
    parkVC.tabBarItem.image = [UIImage imageNamed:@"park_icon.png"];
    UINavigationController *parkNv = [[UINavigationController alloc]initWithRootViewController:parkVC];
    
    
    
   MessageViewController *messageVC = [[MessageViewController alloc]init];
    messageVC.tabBarItem.title = @"信息";
    messageVC.tabBarItem.image = [UIImage imageNamed:@"message_icon2.png"];
   UINavigationController *messageNv = [[UINavigationController alloc]initWithRootViewController:messageVC];
    
    MineViewController *MineVC = [[MineViewController alloc]init];
    MineVC.tabBarItem.title = @"我的";
    MineVC.tabBarItem.image = [UIImage imageNamed:@"myicon_icon2.png"];
    UINavigationController *MineNv = [[UINavigationController alloc]initWithRootViewController:MineVC];
    NSArray *ViewControllers = @[firstNv,nearNv,parkNv,messageNv,MineNv];
    
    
    UITabBarController *tableBarVc = [[UITabBarController alloc]init];
    tableBarVc.viewControllers = ViewControllers;
    [UIApplication sharedApplication].keyWindow.rootViewController = tableBarVc;
    
    
    
    
    
    
    
    
    
    
    
    // 轮播图
    
    // 情景二：采用网络图片实现

    
    
    // 情景三：图片配文字
    NSArray *titles = @[@"感谢您的支持，如果下载的",
                        @"如果代码在使用过程中出现问题",
                        @"您可以发邮件到gsdios@126.com",
                        @"感谢您的支持"
                        ];
    
    
    
    
    
    CGFloat w = self.view.bounds.size.width;
    
    
    
    

    
//    //    // 创建带标题的图片轮播器
//    SDCycleScrollView *cycleScrollView2 = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 280, w, 180) imageURLsGroup:imagesURL];
//    cycleScrollView2.pageControlAliment = SDCycleScrollViewPageContolAlimentRight;
//    cycleScrollView2.delegate = self;
//    cycleScrollView2.titlesGroup = titles;
//    [self.view addSubview:cycleScrollView2];
//    cycleScrollView2.autoScrollTimeInterval = 2.5;
    
}










- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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