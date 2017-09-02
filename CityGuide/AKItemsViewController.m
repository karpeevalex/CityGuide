//
//  AKItemsViewController.m
//  CityGuide
//
//  Created by Alexander Karpeev on 02.09.17.
//  Copyright © 2017 Alexander Karpeev. All rights reserved.
//

#import "AKItemsViewController.h"
#import "AKCity.h"
#import "AKItemCell.h"
#import "AKItem.h"

@interface AKItemsViewController ()

@property (nonatomic) NSArray *items;

@end

@implementation AKItemsViewController

- (instancetype)initWithType:(NSString *)type forCity:(AKCity *)city
{
    self = [super init];
    if (self)
    {
        _items = [city getItemsType:type forCity:city.name];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    UINib *nib = [UINib nibWithNibName:@"AKItemCell" bundle:nil];
    
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    _collectionView = [[UICollectionView alloc] initWithFrame:self.view.frame collectionViewLayout:layout];
    [_collectionView setDataSource:self];
    [_collectionView setDelegate:self];
    _collectionView.backgroundColor = [UIColor whiteColor];
    
    [_collectionView registerNib:nib forCellWithReuseIdentifier:@"AKItemCell"];
    
    [self.view addSubview:_collectionView];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [self.items count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    AKItemCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"AKItemCell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor grayColor];
    AKItem *item = self.items[indexPath.row];
    
    cell.titleLabel.text = item.title;
    cell.costValueLabel.text = item.cost;
    cell.mainImageView.image = item.mainImage;
    
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(200, 250);
}

@end
