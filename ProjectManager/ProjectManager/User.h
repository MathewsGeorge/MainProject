//
//  User.h
//  ProjectManager
//
//  Created by Unbounded Solutions on 5/15/13.
//  Copyright (c) 2013 Unbounded Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property (retain, nonatomic) NSString *userId;
@property (retain, nonatomic) NSString *password;
@property (retain, nonatomic) NSString *department;
@property (retain, nonatomic) NSString *position;
@property (retain, nonatomic) NSString *userName;
@property (retain, nonatomic) NSString *location;
@property (retain, nonatomic) NSNumber *priority;
@property (retain, nonatomic) NSNumber *phone;

@end
