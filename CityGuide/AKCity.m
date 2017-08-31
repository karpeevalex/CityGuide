//
//  AKCity.m
//  CityGuide
//
//  Created by Alexander Karpeev on 31.08.17.
//  Copyright © 2017 Alexander Karpeev. All rights reserved.
//

#import "AKCity.h"

@implementation AKCity

- (instancetype)initWithName:(NSString *)name mainImage:(UIImage *)mainImage
{
    self = [super init];
    if (self)
    {
        _name = name;
        _mainImage = mainImage;
    }
    return self;
}



@end
