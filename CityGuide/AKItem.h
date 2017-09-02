//
//  AKItem.h
//  CityGuide
//
//  Created by Alexander Karpeev on 02.09.17.
//  Copyright © 2017 Alexander Karpeev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AKItem : NSObject

@property (nonatomic) int itemID;
@property (nonatomic) NSString * title;
@property (nonatomic) NSString * cost;
@property (nonatomic) NSString * itemDescription;
@property (nonatomic) UIImage * mainImage;
@property (nonatomic) NSArray * images;

@end
