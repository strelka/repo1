//
//  ViewControllerNext.m
//  1804
//
//  Created by iOS-School-1 on 18.04.17.
//  Copyright © 2017 JSh. All rights reserved.
//

#import "ViewControllerNext.h"

@interface ViewControllerNext ()
@property (nonatomic, strong) UIButton* buttonBack;
@end

@implementation ViewControllerNext


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.buttonBack = [[UIButton alloc] initWithFrame:CGRectMake(50,300,100,20)];
    self.buttonBack.backgroundColor = [UIColor darkGrayColor];
    [self.view addSubview:self.buttonBack];
    [self.buttonBack addTarget:self action:@selector(backButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    
    // Do any additional setup after loading the view.
}

-(void) backButtonTapped:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
