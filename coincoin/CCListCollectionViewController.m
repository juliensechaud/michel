//
//  CCListCollectionViewController.m
//  coincoin
//
//  Created by Julien SECHAUD on 08/11/2015.
//  Copyright © 2015 Moana et Archibald. All rights reserved.
//

#import "UIImageView+AFNetworking.h"

#import "CCListCollectionViewController.h"

@interface CCListCollectionViewController () {
    NSArray *_listSdf;
}

@end

@implementation CCListCollectionViewController

static NSString * const reuseIdentifier = @"sdfCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Sans-abris";
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    NSError *error;
    NSString *path = [[NSBundle mainBundle] pathForResource:@"listSdf" ofType:@"plist"];
    NSData *plistData = [NSData dataWithContentsOfFile:path];
    NSPropertyListFormat plistFormat;
    _listSdf = [NSPropertyListSerialization propertyListWithData:plistData options:NSPropertyListImmutable format:&plistFormat error:&error];
    
    [self.collectionView reloadData];

    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    NSIndexPath *indexPath = [self.collectionView indexPathForCell:sender];
    UIViewController *segueV = [segue destinationViewController];
    segueV.title = [[_listSdf objectAtIndex:indexPath.row] objectForKey:@"firstName"];
}


#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return _listSdf.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    NSDictionary *sdf = [_listSdf objectAtIndex:indexPath.row];
    UIImageView *v = [cell viewWithTag:1];
    UILabel *firstName = [cell viewWithTag:2];
    UILabel *age = [cell viewWithTag:3];
    UILabel *city = [cell viewWithTag:4];
    
    [v setImageWithURL:[NSURL URLWithString:[sdf objectForKey:@"image"]] placeholderImage:[UIImage imageNamed:@"placeholder"]];
    [firstName setText:[sdf objectForKey:@"firstName"]];
    [age setText:[sdf objectForKey:@"age"]];
    [city setText:[sdf objectForKey:@"city"]];
    
    // Configure the cell
    
    return cell;
}

//- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
//{
//    return CGSizeMake(120, 180);
//}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
