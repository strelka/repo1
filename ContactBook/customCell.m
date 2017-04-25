//
//  customCell.m
//  ContactBook
//
//  Created by iOS-School-1 on 25.04.17.
//  Copyright © 2017 JSh. All rights reserved.
//

#import "customCell.h"
#import <Masonry/Masonry.h>
#import "avatarView.h"
#import "ContactRow.h"

@implementation customCell

@synthesize avatarLabel, primaryLabel, secondaryLabel;

-(id)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]){
        avatarLabel = [[avatarView alloc] init] ;
        primaryLabel = [UILabel new];
        secondaryLabel= [UILabel new];
        [self.contentView addSubview:avatarLabel];
        [self.contentView addSubview:primaryLabel];
        [self.contentView addSubview:secondaryLabel];
    }
    return self;
}


-(void) layoutSubviews{
    [super layoutSubviews];
    
    [avatarLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left);
        make.bottom.equalTo(self.mas_bottom);
        make.top.equalTo(self.mas_top);
        make.height.equalTo(@100);
        make.width.equalTo(avatarLabel.mas_height);
    
    }];
    
     [primaryLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(avatarLabel.mas_right);
        make.right.equalTo(self.mas_right);
        make.top.equalTo(self.mas_top);
        make.bottom.equalTo(self.mas_centerY);
         
     }];
      
    [secondaryLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(avatarLabel.mas_right);
        make.right.equalTo(self.mas_right);
        make.top.equalTo(self.mas_centerY);
        make.bottom.equalTo(self.mas_bottom);
        
        
    }];

}

-(void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}


@end
