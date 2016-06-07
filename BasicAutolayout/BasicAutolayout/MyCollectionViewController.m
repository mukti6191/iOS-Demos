//
//  MyCollectionViewController.m
//  BasicAutolayout
//
//  Created by Umesh on 04/06/16.
//  Copyright © 2016 Umesh. All rights reserved.
//

#import "MyCollectionViewController.h"

@interface MyCollectionViewController ()
{
    NSMutableArray *arrColor;
}
@end

@implementation MyCollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    arrColor = [[NSMutableArray alloc] initWithObjects:[UIColor redColor],[UIColor yellowColor],[UIColor blueColor],[UIColor greenColor],[UIColor magentaColor], nil];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return arrColor.count;
}
    

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    if (!cell) {
        cell = [[UICollectionViewCell alloc] init];
    }
    
    cell.backgroundColor = arrColor[indexPath.row];
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
