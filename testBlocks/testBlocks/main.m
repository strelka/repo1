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

@interface BlockTestClass : NSObject

-(void)TestMemory;
@end

@interface BlockTestClass()
@property(nonatomic, copy) NSString* str;
@property (nonatomic, copy) void(^test)(void);
@end
@implementation BlockTestClass
-(instancetype)init{
    self = [super init];
    if (self){
        _str = @"HelloWorld";
    
    }
    return self;

}

-(void)testMemory{
    __weak typeof (self) weakSelf = self;
    self.test = ^void(void){
        __strong typeof(self) strongSelf = weakSelf;
        
        NSLog(@"%@", strongSelf.str);
    };
    self.test();
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
//        dispatch_sync(dispatch_get_global_queue
//                      (DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//            NSLog(@"Hello world!");
//        });
//                         }
//        __block int a = 0;
//    
//        int (^inc)(void) = ^int(void)
//        {
//            
//            ++a;
//            NSLog(@"%@", @(a));
//            return a;
//        
//        };
//    
//    [inc copy]; // iz bloka mogno rabotat' iz vne(!??)
////        a += 10;
////        
////        f(2, inc);
//        inc();
        BlockTestClass *test = [BlockTestClass new];
        [test testMemory];
        
    }
    return 0;
}
