//
//  AppStoreObject.h
//  MySimpleTableApp
//
//  Created by Chad Jones on 1/27/16.
//  Copyright (c) 2016 CollegeMobile, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GardenObject : NSObject

@property NSString* name;
@property NSInteger *width;
@property NSInteger *height;


//some sort of 2d array of "plant" objects
@property NSMutableArray *table[][];

@property NSImage *pic;

//need to added vars for push notifications
//for watering / weeding

@end
