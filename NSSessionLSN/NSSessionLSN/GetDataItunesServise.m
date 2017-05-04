//
//  GetDataItunesServise.m
//  NSSessionLSN
//
//  Created by iOS-School-1 on 04.05.17.
//  Copyright © 2017 JSh. All rights reserved.
//

#import "GetDataItunesServise.h"
#import "SSComposition.h"

@implementation GetDataItunesServise 

-(void)getDataFromItunes:(NSString * )nameSong withComplitionhandler:(void(^)(NSArray *, NSError *))complition{
    
    SSComposition* (^createComposition)(NSDictionary* jsonContact);
    
        createComposition = ^SSComposition*(NSDictionary* jsonContact){
            SSComposition *composition = [SSComposition new];
            composition.trackName = [jsonContact objectForKey:@"trackName"];
            composition.artistName = [jsonContact objectForKey:@"artistName"];
            composition.collectionName = [jsonContact objectForKey:@"collectionName"];
        return composition;
        };
    
    NSMutableArray *resultComposition = [NSMutableArray new];

    NSURLSessionConfiguration *defaultConfig = [NSURLSessionConfiguration defaultSessionConfiguration];
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:defaultConfig];
    NSURL *url = [NSURL URLWithString:@"https://itunes.apple.com/search?term=jack+johnson"];
    [[session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSDictionary* json = [NSJSONSerialization JSONObjectWithData:data
                                                             options:0
                                                               error:&error];
        
        NSDictionary* compositions = [json objectForKey:@"results"];
        
        for (NSDictionary* composition in compositions){
            [resultComposition addObject:createComposition(composition)];
        }
        
        dispatch_async(dispatch_get_main_queue(), ^{
            complition(resultComposition, error);
        });
        
        
        
        
    }]resume];
    
}


@end
