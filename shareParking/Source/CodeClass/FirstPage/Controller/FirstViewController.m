//
//  FirstViewController.m
//  shareParking
//
//  Created by xiaoma on 16/3/7.
//  Copyright © 2016年 xiaoma. All rights reserved.
//

#import "FirstViewController.h"
#import "SDCycleScrollView.h"
#import "Header.h"
#import "classifyCollectionViewCell.h"
@interface FirstViewController ()<SDCycleScrollViewDelegate,UITableViewDataSource,UITableViewDelegate,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    
 // 加载tableView
    [self firstPageTabView];
  
    
 // CollecitonView
    
    
}


-(void)viewDidAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [[self navigationController]setNavigationBarHidden:YES animated:YES];
}


// 点击每个轮播实现的效果,点击事件
- (void)cycleScrollView:(SDCycleScrollView *)cycleScrollView didSelectItemAtIndex:(NSInteger)index
{
}



-(UITableView *)firstPageTabView
{

    if (!_firstPageTabView) {
        _firstPageTabView = [[UITableView alloc]initWithFrame:CGRectMake(0,0,Wi, Hi - 64)];
        
        _firstPageTabView.delegate = self;
        _firstPageTabView.dataSource = self;
        [self.view addSubview:_firstPageTabView];
    }
    
    return _firstPageTabView;
    

}




// 分类

//-(UICollectionView *)classifyCollectionView
//{
//    
//    if (!_classifyCollectionView) {
//        
////        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
////        layout.minimumInteritemSpacing = 0;
////        layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
////        _classifyCollectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 0, Wi, 120) collectionViewLayout:layout];
////        _classifyCollectionView.delegate = self;
////        _classifyCollectionView.dataSource = self;
////        _classifyCollectionView.backgroundColor = [UIColor redColor];
////    [_classifyCollectionView registerClass:[classifyCollectionViewCell class] forCellWithReuseIdentifier:@"classifyCollectionViewCell"];
//        
////        // 布局
////        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
////        
////        //item的大小
////        layout.itemSize = CGSizeMake(110, 120);
////        
////        // 滚动方向
////        layout.scrollDirection = UICollectionViewScrollDirectionVertical;
////        //间距
////        //左右间距
////        // 上下间距
////        layout.minimumLineSpacing = 60;
////        
////        // 左右效果
////        layout.minimumInteritemSpacing = 0;
////        
////        //内边距
////        layout.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10);
////        //// 设置header
////        
////     _classifyCollectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 0, Wi, 120) collectionViewLayout:layout];
////            [self.view addSubview:_classifyCollectionView];
////    }
////    
////    
////    return _classifyCollectionView;
//    
//}




// tabLeView的代理方法
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView

{
     return  1;
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return 4;
    
}



-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   
    
    
    if (indexPath.row == 0) {
        
        
        static NSString *cellIdentifier = @"cell1";
        UITableViewCell *cell1 = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        if (!cell1) {
            cell1 = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
            
                NSArray *images = @[[UIImage imageNamed:@"img_001.png"],
                                    [UIImage imageNamed:@"img_002.png"],
                                    [UIImage imageNamed:@"img_003.png"],
                                    [UIImage imageNamed:@"img_004.png"],
                                    [UIImage imageNamed:@"img_005.png"]];
                _cycleScrollView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 0, Wi, 180) imagesGroup:images];
                _cycleScrollView.delegate = self;
                [self.view addSubview:_cycleScrollView];
                _cycleScrollView.autoScrollTimeInterval = 2.5;
            [cell1.contentView addSubview:_cycleScrollView];
          }
      
          return cell1;
    
    }else if (indexPath.row == 1){
        
        
        static NSString *cellIdentifier = @"cell2";
        UITableViewCell *cell2 = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        if (!cell2) {
            cell2 = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
            
            UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
            
            //item的大小
            layout.itemSize = CGSizeMake(50, 50);
            
            // 滚动方向
            layout.scrollDirection = UICollectionViewScrollDirectionVertical;
            //间距
            //左右间距
            // 上下间距
            layout.minimumLineSpacing = 5;
            
            // 左右效果
            layout.minimumInteritemSpacing = 5;
            
            //内边距
            layout.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10);
            //// 设置header
            
            _classifyCollectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 0, Wi, 60) collectionViewLayout:layout];
            _classifyCollectionView.delegate = self;
            _classifyCollectionView.dataSource = self;
            _classifyCollectionView.backgroundColor = [UIColor yellowColor];
            [_classifyCollectionView registerClass:[classifyCollectionViewCell class] forCellWithReuseIdentifier:@"classifyCell"];
            [cell2.contentView addSubview:_classifyCollectionView];
            
            
        }
        
        return cell2;
        
    }else if (indexPath.row == 2){
    
        static NSString *cellIdentifier = @"cell3";
        UITableViewCell *cell3 = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        if (!cell3) {
            cell3 = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        }
        
        return cell3;
    }else{
        
        static NSString *cellIdentifier = @"cell4";
        UITableViewCell *cell4 = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        if (!cell4) {
            cell4 = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        }
        
        return cell4;
        
    }
    
    
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    if (indexPath.row == 0) {
        
        return  180;
    }else{
        
        return  80;
    }
    
    
}






// collectionView的代理方法


-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    
    return 4;
}


-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    
    return 2;
}


-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
   // static NSString *CellIdentifier = @"classifyCell";
    classifyCollectionViewCell *classifyCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"classifyCell" forIndexPath:indexPath];


    return classifyCell;

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
