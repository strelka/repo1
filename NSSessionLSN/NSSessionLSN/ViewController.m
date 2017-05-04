//
//  ViewController.m
//  NSSessionLSN
//
//  Created by iOS-School-1 on 04.05.17.
//  Copyright © 2017 JSh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UIImageView *imV;

@end

@implementation ViewController

- (void)viewDidLoad {
    
   _imV = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    
    
    [super viewDidLoad];
    [self.view addSubview:_imV];
    NSURLSessionConfiguration *defaultConfig = [NSURLSessionConfiguration defaultSessionConfiguration];
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:defaultConfig];
    NSURL *url = [NSURL URLWithString:@"https://itunes.apple.com/search?term=jack+johnson"];
    [[session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSLog(@"got response %@ with error %@", response, error);
        
        NSString * responseStr = [[NSString alloc] initWithData:data encoding:NSWindowsCP1250StringEncoding];
        NSLog(@"Data:\n%@\nEND DATA\n", responseStr);
        
    }]resume];
    
    NSURLSession *session1 = [NSURLSession sessionWithConfiguration:defaultConfig delegate:self delegateQueue:[NSOperationQueue mainQueue]];
    NSURL *image = [NSURL URLWithString:@"http://is3.mzstatic.com/image/thumb/Music2/v4/a2/66/32/a2663205-663c-8301-eec7-57937c2d0878/source/30x30bb.jpg"];
    NSURLSessionDownloadTask *downloadTask = [session1 downloadTaskWithURL:image];
    [downloadTask resume];
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didFinishDownloadingToURL:(NSURL *)location
{
    NSData *data = [NSData dataWithContentsOfURL:location];
    
    UIImage *im = [UIImage imageWithData:data];
    self.imV.image = im;
    
}

@end
