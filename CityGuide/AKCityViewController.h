//
//  AKCityViewController.h
//  CityGuide
//
//  Created by Alexander Karpeev on 31.08.17.
//  Copyright © 2017 Alexander Karpeev. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AKCity;

@interface AKCityViewController : UITableViewController

@property (nonatomic) AKCity *currentCity;

@end
