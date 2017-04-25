//
//  avatarView.m
//  ContactBook
//
//  Created by iOS-School-1 on 25.04.17.
//  Copyright © 2017 JSh. All rights reserved.
//

#import "avatarView.h"
#import "ContactRow.h"

@implementation avatarView
{
    NSArray *colors;
}

-(void)setColor: (ContactRow*) cr{
    
    colors = @[[UIColor redColor],
               [UIColor greenColor],
               [UIColor blueColor],
               [UIColor orangeColor],
               [UIColor magentaColor],
               [UIColor lightGrayColor],
               [UIColor  darkGrayColor]];
    
    unichar firstCharacterName = [cr.name characterAtIndex:0];
    unichar firstCharacterLname = [cr.last_name characterAtIndex:0];
    int i = (firstCharacterName + firstCharacterLname) % 7;
    UIColor* color = colors[i];
    self.backgroundColor = color;
}

-(void)setTitle: (ContactRow*) cr{
    char firstCharacterName = [cr.name characterAtIndex:0];
    char firstCharacterLname = [cr.last_name characterAtIndex:0];
    NSString* res = [NSString stringWithFormat:@"%c%c", firstCharacterName, firstCharacterLname];
    self.text = res;
}

@end
