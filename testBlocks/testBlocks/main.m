//
//  main.m
//  testBlocks
//
//  Created by iOS-School-1 on 15.04.17.
//  Copyright © 2017 JSh. All rights reserved.
//

#import <Foundation/Foundation.h>

//void f(int a, int (^inc)(void)){
//    NSLog(@"%@", @(a+inc()));
//
//}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        dispatch_sync(dispatch_get_global_queue
                      (DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            NSLog(@"Hello world!");
        });
                         }
        __block int a = 0;
    
        int (^inc)(void) = ^int(void)
        {
            
            ++a;
            NSLog(@"%@", @(a));
            return a;
        
        };
    
    [inc copy]; // iz bloka mogno rabotat' iz vne(!??)
//        a += 10;
//        
//        f(2, inc);
        inc();

    return 0;
}
