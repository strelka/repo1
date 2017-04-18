//
//  ViewController.m
//  1804
//
//  Created by iOS-School-1 on 18.04.17.
//  Copyright © 2017 JSh. All rights reserved.
//

#import "ViewController.h"
#import "ViewControllerNext.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:1];
    [self.button addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)buttonTapped:(id)sender
{
    ViewControllerNext *vc = [ViewControllerNext new];
    vc.view.backgroundColor = [UIColor lightGrayColor];
    [self.navigationController pushViewController:vc animated:NO];

}

@end
