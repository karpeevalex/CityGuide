//
//  AKItemCell.h
//  CityGuide
//
//  Created by Alexander Karpeev on 02.09.17.
//  Copyright © 2017 Alexander Karpeev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AKItemCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *mainImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *costNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *costValueLabel;

@end
