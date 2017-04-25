//
//  ViewController.m
//  testConstraints
//
//  Created by iOS-School-1 on 20.04.17.
//  Copyright © 2017 JSh. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"


@interface ViewController ()
@property(nonatomic, strong) UILabel* label1;
@property(nonatomic, strong) UITextField* textfield1;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.label1 = [[UILabel alloc] init];
    self.textfield1 = [[UITextField alloc] init];
    self.label1.text = @"TEST";
    self.textfield1.text = @"textField";
    
    UIButton* btn = [UIButton new];
    [btn setTitle:@"OK" forState:UIControlStateNormal];
    
    
    self.label1.translatesAutoresizingMaskIntoConstraints = NO;
    self.textfield1.translatesAutoresizingMaskIntoConstraints = NO;
    btn.translatesAutoresizingMaskIntoConstraints=NO;
    btn.backgroundColor = [UIColor greenColor];
    
    [self.view addSubview:self.label1];
    [self.view addSubview:self.textfield1];
    
    [self.view addSubview:btn];
    
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view.mas_centerX);
        make.centerY.equalTo(self.view.mas_centerY);
    }];
    
    [self.textfield1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view.mas_centerX);
        make.centerY.lessThanOrEqualTo(@50);
        
    }];
    
    [self.label1 mas_makeConstraints:^(MASConstraintMaker *make){
        make.centerX.equalTo(self.view.mas_centerX);
        make.top.equalTo(self.view.mas_top).with.offset(40);
        make.height.equalTo(@80);
        make.width.greaterThanOrEqualTo(@40);
        
        
    }];
    
    
    
    //NSDictionary* subviews = @{@"label": self.label};
    
//    NSArray *verticalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-20-[label(20)]-20|" options:NSLayoutFormatDirectionLeadingToTrailing metrics:nil views:subviews];
//    
//    NSLayoutConstraint *center = [NSLayoutConstraint constraintWithItem:self.label attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0];
//    [self.view addConstraint:center];
   // [self.view addConstraint:verticalConstraints];
//[NSLayoutConstraint activateConstraints:<#(nonnull NSArray<NSLayoutConstraint *> *)#>]
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
