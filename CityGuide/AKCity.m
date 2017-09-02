//
//  AKCity.m
//  CityGuide
//
//  Created by Alexander Karpeev on 31.08.17.
//  Copyright © 2017 Alexander Karpeev. All rights reserved.
//

#import "AKCity.h"
#import "AKItem.h"
#import "AKDBManager.h"

@interface AKCity ()

@property (nonatomic) AKDBManager *dbManager;

@end

@implementation AKCity

- (instancetype)initWithName:(NSString *)name mainImage:(UIImage *)mainImage
{
    self = [super init];
    if (self)
    {
        _dbManager = [[AKDBManager alloc] initWithDatabaseFilename:@"cityGuide.sql"];
        _name = name;
        _mainImage = mainImage;
    }
    return self;
}

- (NSArray *)getItemsType:(NSString *)type forCity:(NSString*)name
{
    //read data from DB; return array of AKItem*
    NSString *query = @"select * from item";
    
    self.items = [[NSArray alloc] initWithArray:[self.dbManager loadDataFromDB:query]];
    
    return self.items;
}

@end
