//
//  AKDBManager.h
//  CityGuide
//
//  Created by Alexander Karpeev on 02.09.17.
//  Copyright © 2017 Alexander Karpeev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AKDBManager : NSObject

@property (nonatomic) NSMutableArray *arrColumnNames;
@property (nonatomic) int affectedRows;
@property (nonatomic) long long lastInsertedRowID;

- (instancetype)initWithDatabaseFilename:(NSString *)dbFilename;

-(NSArray *)loadDataFromDB:(NSString *)query;
-(void)executeQuery:(NSString *)query;

@end
