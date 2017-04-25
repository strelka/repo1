//
//  UpperCase.m
//  Reverser
//
//  Created by iOS-School-1 on 13.04.17.
//  Copyright © 2017 Alexey Ulenkov. All rights reserved.
//

#import "UpperCase.h"

@implementation UpperCase

+(NSString* ) uppercase:(NSString *) source {
    
    if (nil == source)
    {
        return source;
    }
    
    return [[source uppercaseString] copy];
}


@end
