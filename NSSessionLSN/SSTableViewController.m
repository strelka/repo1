//
//  SSTableViewController.m
//  NSSessionLSN
//
//  Created by iOS-School-1 on 04.05.17.
//  Copyright © 2017 JSh. All rights reserved.
//

#import "SSTableViewController.h"
#import "GetDataItunesServise.h"
#import "SSComposition.h"

@interface SSTableViewController ()
@property(nonatomic, strong) NSArray* composition;
@end

@implementation SSTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    GetDataItunesServise * service = [GetDataItunesServise new];
    
    [service getDataFromItunes:@"jack+johnson" withComplitionhandler:^(NSArray * arr, NSError * err) {
        self.composition = arr;
        [self.tableView reloadData];
    }];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    
    NSLog(@"%lu", (unsigned long)self.composition.count);
    return self.composition.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    SSComposition *sc = [SSComposition new];
    sc = self.composition[indexPath.row];
    cell.textLabel.text = sc.trackName;
    return cell;
    
//    UITableViewCell *cell = (CBContactCell *)[tableView dequeueReusableCellWithIdentifier:CBContactCellIdentifier forIndexPath:indexPath];
//    
//    if (cell == nil) {
//        cell = [[CBContactCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CBContactCellIdentifier];
//    }
//    
//    [(CBContactCell *)cell addContact:[self.contacts objectAtIndexedSubscript:indexPath.row]];
//    
    
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
