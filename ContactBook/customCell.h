//
//  customCell.h
//  ContactBook
//
//  Created by iOS-School-1 on 25.04.17.
//  Copyright © 2017 JSh. All rights reserved.
//

#import <UIKit/UIKit.h>
@class avatarView;
@interface customCell : UITableViewCell

@property(nonatomic, strong) avatarView *avatarLabel;
@property(nonatomic, strong) UILabel *primaryLabel;
@property(nonatomic,strong) UILabel *secondaryLabel;


@end
