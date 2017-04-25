//
//  avatarView.h
//  ContactBook
//
//  Created by iOS-School-1 on 25.04.17.
//  Copyright © 2017 JSh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContactRow.h"

@interface avatarView : UILabel
-(void)setColor:(ContactRow*) cr;
-(void)setTitle:(ContactRow*) cr;
@end
