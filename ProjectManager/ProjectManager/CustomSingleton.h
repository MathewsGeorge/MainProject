//
//  CustomSingleton.h
//  ProjectManager
//
//  Created by Unbounded Solutions on 5/12/13.
//  Copyright (c) 2013 Unbounded Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CustomSingleton : NSObject
@property (assign, nonatomic) BOOL logInStatus;
+(CustomSingleton*)initCustomSingleton;

@end
