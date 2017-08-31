//
//  AKCities.m
//  CityGuide
//
//  Created by Alexander Karpeev on 31.08.17.
//  Copyright © 2017 Alexander Karpeev. All rights reserved.
//

#import "AKCities.h"
#import "AKCity.h"

@implementation AKCities

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        AKCity *city = [[AKCity alloc] initWithName:@"Moscow" mainImage:[UIImage imageNamed:@"moscow"]];
        _allCities = [[NSArray alloc] initWithObjects:city, nil];
    }
    return self;
}



@end
