//
//  AKCityViewController.m
//  CityGuide
//
//  Created by Alexander Karpeev on 31.08.17.
//  Copyright © 2017 Alexander Karpeev. All rights reserved.
//

#import "AKCityViewController.h"
#import "AKItemsViewController.h"

@interface AKCityViewController ()

@end

@implementation AKCityViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    switch (indexPath.row) {
        case 0:
            cell.textLabel.text = @"Hotels";
            break;
        case 1:
            cell.textLabel.text = @"Sights";
            break;
        case 2:
            cell.textLabel.text = @"Restoraunts";
            break;
        case 3:
            cell.textLabel.text = @"Events";
            break;
    }
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *type = [tableView cellForRowAtIndexPath:indexPath].textLabel.text;
    AKItemsViewController *itemsController = [[AKItemsViewController alloc] initWithType:type forCity:self.currentCity];
    [self presentViewController:itemsController animated:YES completion:nil];
}


@end
