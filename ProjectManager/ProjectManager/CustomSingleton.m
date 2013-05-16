//
//  CustomSingleton.m
//  ProjectManager
//
//  Created by Unbounded Solutions on 5/12/13.
//  Copyright (c) 2013 Unbounded Solutions. All rights reserved.
//

#import "CustomSingleton.h"
static CustomSingleton *customSingleton = NULL;

@implementation CustomSingleton
-(id)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}
+(CustomSingleton*)initCustomSingleton
{
    @synchronized(customSingleton)
    {
        if (customSingleton==NULL) {
            customSingleton = [[CustomSingleton alloc]init];
        }
    }
    return customSingleton;

}
@end
