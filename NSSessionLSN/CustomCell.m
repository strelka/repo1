//
//  CustomCell.m
//  NSSessionLSN
//
//  Created by iOS-School-1 on 04.05.17.
//  Copyright © 2017 JSh. All rights reserved.
//

#import "CustomCell.h"
#import <Masonry/Masonry.h>
@interface CustomCell()
@property(nonatomic, strong) UILabel *trackName;
@property(nonatomic, strong) UILabel *artistName;
@property(nonatomic, strong) UILabel *collectionName;

@end
@implementation CustomCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    
    // Configure the view for the selected state
}

- (void)createSubviewsWithCompositions {
    _trackName = [UILabel new];
    _artistName = [UILabel new];
    _collectionName = [UILabel new];
    
    [self addSubview:_trackName];
    [self addSubview:_artistName];
    [self addSubview:_collectionName];
    
   //[_trackName mas_makeConstraints:^(MASConstraintMaker *make) {
   //     <#code#>
   // }]
    
    
}
@end

