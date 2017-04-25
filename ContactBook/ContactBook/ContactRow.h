//
//  ContactRow.h
//  ContactBook
//
//  Created by iOS-School-1 on 25.04.17.
//  Copyright © 2017 JSh. All rights reserved.
//

#import <Foundation/Foundation.h>
@class randomColor;
@interface ContactRow : NSObject
@property(nonatomic, strong) NSString *name;
@property(nonatomic, strong) NSString *last_name;
@property(nonatomic, strong) randomColor *color;

@end
