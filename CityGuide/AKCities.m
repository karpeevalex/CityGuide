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
        _allCities = [[NSArray alloc] initWithObjects:[[AKCity alloc] initWithName:@"Moscow" mainImage:[UIImage imageNamed:@"moscow"]],
                                                      [[AKCity alloc] initWithName:@"Saint Petersburg" mainImage:[UIImage imageNamed:@"saintpetersburg"]],
                                                      [[AKCity alloc] initWithName:@"Ekaterinburg" mainImage:[UIImage imageNamed:@"ekaterinburg"]],
                                                      [[AKCity alloc] initWithName:@"Novosibirsk" mainImage:[UIImage imageNamed:@"novosibirsk"]],
                                                      nil];
    }
    return self;
}



@end
