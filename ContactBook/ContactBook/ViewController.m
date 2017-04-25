//
//  ViewController.m
//  ContactBook
//
//  Created by iOS-School-1 on 25.04.17.
//  Copyright © 2017 JSh. All rights reserved.
//

#import "ViewController.h"
#import "customCell.h"
#import <Masonry/Masonry.h>
#import "Model.h"
#import "ContactRow.h"
#import "avatarView.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) UITableView* tableView;
@property (nonatomic, strong) Model* model;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.model = [Model new];
    self.tableView = [UITableView new];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    [self.view addSubview:self.tableView];
    
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view.mas_left);
        make.right.equalTo(self.view.mas_right);
        make.top.equalTo(self.view.mas_top);
        make.bottom.equalTo(self.view.mas_bottom);
    }];
    
    self.tableView.backgroundColor = [UIColor whiteColor];
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.model.contacts count];
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    customCell* cell = [[customCell alloc] initWithFrame:CGRectZero];
    ContactRow *cr = [ContactRow new];
    cr = self.model.contacts[indexPath.row];
    
    cell.primaryLabel.text = [cr name];
    cell.secondaryLabel.text = [cr last_name];
    
    [cell.avatarLabel setColor:cr];
    [cell.avatarLabel setTitle:cr];
    
    
    
    //randomColor* rcolor = colors[indexPath.row];
    
//    cell.primaryLabel.backgroundColor = [UIColor colorWithRed:rcolor.red green:rcolor.green blue:rcolor.blue alpha:1];
//    ;
//    cell.secondaryLabel.text = [NSString stringWithFormat:@"%ld - %@", (long)indexPath.row,
//                                [rcolor print]];
//    
//    cell.secondaryLabel.textColor=[UIColor blackColor];
    
 
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    UIViewController *vc = [UIViewController new];
    //randomColor *coloritem = colors[indexPath.row];
    
    vc.view.backgroundColor = [UIColor greenColor];//[UIColor colorWithRed:coloritem.red green:coloritem.green blue:coloritem.blue alpha:1];
    vc.navigationItem.title = @"vc";//[coloritem print];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
