//
//  Project.h
//  ProjectManager
//
//  Created by Unbounded Solutions on 5/14/13.
//  Copyright (c) 2013 Unbounded Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Project : NSObject

@property (retain, nonatomic) NSString *name;
@property (retain, nonatomic) NSDate *startDate;
@property (retain, nonatomic) NSDate *dueDate;
@property (retain, nonatomic) NSString *client;
@property (retain, nonatomic) NSString *vendor;
@property (retain, nonatomic) NSString *comment;
@property (retain, nonatomic) NSString *manager;
@property (assign, nonatomic) float budget;
@property (assign, nonatomic) float expense;


-(BOOL)saveToDatabase;
-(Project*)readData;
@end
