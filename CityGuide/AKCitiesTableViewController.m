//
//  AKCitiesTableViewController.m
//  CityGuide
//
//  Created by Alexander Karpeev on 31.08.17.
//  Copyright © 2017 Alexander Karpeev. All rights reserved.
//

#import "AKCitiesTableViewController.h"
#import "AKCityCell.h"
#import "AKCities.h"
#import "AKCity.h"
#import "AKCityViewController.h"

@interface AKCitiesTableViewController ()

@property (nonatomic) AKCities *cities;

@end

@implementation AKCitiesTableViewController

- (instancetype)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self)
    {
        self.cities = [[AKCities alloc] init];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UINib *nib = [UINib nibWithNibName:@"AKCityCell" bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:@"AKCityCell"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.cities.allCities count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    AKCityCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AKCityCell" forIndexPath:indexPath];
    
    AKCity *city = self.cities.allCities[indexPath.row];
    cell.nameLabel.text = city.name;
    cell.mainImageView.image = city.mainImage;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    AKCityViewController *cityController = [[AKCityViewController alloc] initWithStyle:UITableViewStylePlain];
    AKCity *city = self.cities.allCities[indexPath.row];
    cityController.currentCity = city;
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:cityController];
    [self presentViewController:navigationController animated:YES completion:nil];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}

@end
