//
//  AKItemsViewController.h
//  CityGuide
//
//  Created by Alexander Karpeev on 02.09.17.
//  Copyright © 2017 Alexander Karpeev. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AKCity;

@interface AKItemsViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

{
    UICollectionView * _collectionView;
}

- (instancetype)initWithType:(NSString *)type forCity:(AKCity *)city;

@end
