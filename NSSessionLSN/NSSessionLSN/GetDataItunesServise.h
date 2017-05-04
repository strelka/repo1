//
//  GetDataItunesServise.h
//  NSSessionLSN
//
//  Created by iOS-School-1 on 04.05.17.
//  Copyright © 2017 JSh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GetDataItunesServise : NSObject <NSURLSessionDataDelegate>
-(void)getDataFromItunes:(NSString * )nameSong withComplitionhandler:(void(^)(NSArray *, NSError *))complition;
@end
