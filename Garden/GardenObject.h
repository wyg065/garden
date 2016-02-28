//
//  AppStoreObject.h
//  MySimpleTableApp
//
//  Created by Chad Jones on 1/27/16.
//  Copyright (c) 2016 CollegeMobile, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlantObject.h"

@interface GardenObject : NSObject

@property NSString* name;
@property NSInteger width;
@property NSInteger height;


//some sort of 2d array of "plant" objects
//PlantObject *gardenArr2d[1][1];

@property NSMutableArray * gardenArr2d ;

//@property UIImage *pic;

//need to added vars for push notifications
//for watering / weeding
- (void)setWidth:(NSInteger) w;
-(NSInteger)getWidth;


- (void)setHeight:(NSInteger ) h ;
- (NSInteger)getHeight;

-(void)  allocateTable:(NSInteger)h withWidth:(NSInteger) w;



@end
