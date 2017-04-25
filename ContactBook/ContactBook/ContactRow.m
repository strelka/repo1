//
//  ContactRow.m
//  ContactBook
//
//  Created by iOS-School-1 on 25.04.17.
//  Copyright © 2017 JSh. All rights reserved.
//

#import "ContactRow.h"

@implementation ContactRow
@synthesize name, last_name;

-(id) copyWithZone: (NSZone *) zone
{
    ContactRow *newContact = [[ContactRow allocWithZone: zone] init];
    [newContact setName:self.name];
    [newContact setLast_name:self.last_name];
    return newContact;
}


@end
