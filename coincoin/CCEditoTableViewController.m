//
//  CCEditoTableViewController.m
//  coincoin
//
//  Created by Julien SECHAUD on 07/11/2015.
//  Copyright © 2015 Moana et Archibald. All rights reserved.
//

#import "CCEditoTableViewController.h"

@interface CCEditoTableViewController ()

@end

@implementation CCEditoTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Accueil";
//    [self.navigationController.navigationBar setTitleTextAttributes:
//     @{NSForegroundColorAttributeName:[UIColor yellowColor]}];
////    UIEdgeInsets adjustForTabbarInsets = UIEdgeInsetsMake(0, 0, CGRectGetHeight(self.tabBarController.tabBar.frame), 0);
//    self.tableView.contentInset = adjustForTabbarInsets;
//    self.tableView.scrollIndicatorInsets = adjustForTabbarInsets;

    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"editoCell"];
    UILabel *l = [cell viewWithTag:1];
    UIImageView *v = [cell viewWithTag:2];
    UIView *vv = [cell viewWithTag:3];
    [vv setAlpha:0.2];

    switch (indexPath.row) {
        case 0:
            l.text = [@"Donner directement à un sans-abris près de chez vous" uppercaseString];
            [v setImage:[UIImage imageNamed:@"officer1"]];
             break;
        case 1:
            l.text = [@"Comment CoinCoin fonctionne ?" uppercaseString];
            [v setImage:[UIImage imageNamed:@"homeless2"]];
            break;
        case 2:
            l.text = [@"Vous voulez aider CoinCoin, rejoignez-nous" uppercaseString];
            [v setImage:[UIImage imageNamed:@"homeless"]];
            break;
        case 3:
            l.text = [@"Qui sommes-nous ?" uppercaseString];
            [v setImage:[UIImage imageNamed:@"maxresdefault"]];
            break;

        default:
            break;
    }
    return cell;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

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
