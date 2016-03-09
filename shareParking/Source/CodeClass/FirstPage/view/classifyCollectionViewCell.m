//
//  classifyCollectionViewCell.m
//  shareParking
//
//  Created by xiaoma on 16/3/8.
//  Copyright © 2016年 xiaoma. All rights reserved.
//

#import "classifyCollectionViewCell.h"

@implementation classifyCollectionViewCell



- (void)awakeFromNib {
    // Initialization code 控件
    
}


-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        [self p_setupView];
    }
    return self;
}


-(void)p_setupView
{
//    
//    _classifyView = [UIView alloc]initWithFrame:CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)
    
    _classifyImage = [[UIImageView alloc]init];
    _classifyImage.frame = self.contentView.bounds;
    _classifyImage.backgroundColor = [UIColor redColor];
    [self.contentView addSubview:_classifyImage];
    
    
    
    _nameLabel = [[UILabel alloc]initWithFrame:CGRectMake(0,CGRectGetMaxY(_classifyImage.frame), CGRectGetWidth(_classifyImage.frame),30)];
    _nameLabel.backgroundColor = [UIColor redColor];
    _nameLabel.textAlignment = YES;
    [self.contentView addSubview:_nameLabel];
    
    
    
}


@end
