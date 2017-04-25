//
//  Model.m
//  ContactBook
//
//  Created by iOS-School-1 on 25.04.17.
//  Copyright © 2017 JSh. All rights reserved.
//

#import "Model.h"
#import "ContactRow.h"

@implementation Model

-(instancetype) init{

    self = [super init];
    
    ContactRow *cr1 = [ContactRow new];
    cr1.name = @"Vasya";
    cr1.last_name = @"Petrov";
    
    NSMutableArray *contacts = [NSMutableArray new];
    [contacts addObject: cr1];
    
    ContactRow *cr2 = [ContactRow new];
    cr2.name = @"Petya";
    cr2.last_name = @"Ivanov";
    [contacts addObject: cr2];
    
    ContactRow *cr3 = [ContactRow new];
    cr3.name = @"Vanya";
    cr3.last_name = @"Sidorov";
    [contacts addObject: cr3];

    _contacts = [[NSArray alloc] initWithArray:contacts];
    return self;
}

@end
