//
//  FirstViewController.h
//  shareParking
//
//  Created by xiaoma on 16/3/7.
//  Copyright © 2016年 xiaoma. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SDCycleScrollView.h"
@interface FirstViewController : UIViewController


@property(nonatomic,strong)UITableView *firstPageTabView;

@property(nonatomic,strong)SDCycleScrollView *cycleScrollView;

@property(nonatomic,strong)UICollectionView *classifyCollectionView;


@end
