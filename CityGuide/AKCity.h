//
//  AKCity.h
//  CityGuide
//
//  Created by Alexander Karpeev on 31.08.17.
//  Copyright © 2017 Alexander Karpeev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AKCity : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *shortDescription;
@property (nonatomic) UIImage *mainImage;
@property (nonatomic) NSArray *hotels;
@property (nonatomic) NSArray *restourants;
@property (nonatomic) NSArray *events;
@property (nonatomic) NSArray *sights;

- (instancetype)initWithName:(NSString *)name mainImage:(UIImage *)mainImage;




@end
