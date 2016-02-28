//
//  AppStoreObject.m
//  MySimpleTableApp
//
//  Created by Chad Jones on 1/27/16.
//  Copyright (c) 2016 CollegeMobile, Inc. All rights reserved.
//

#import "GardenObject.h"

@implementation GardenObject
@synthesize width;
@synthesize height;

-(void)setWidth:(NSInteger) w {
    width = w;
}

-(NSInteger)getWidth {
    return width ;
}

- (void)setHeight:(NSInteger ) h {
    height = h;
}

- (NSInteger)getHeight {
    return height;
}

//-(void)  allocateTable:(NSInteger)h withWidth:(NSInteger) w
-(void)  allocateTable:(NSInteger)h withWidth:(NSInteger) w {
    NSLog([@(h) stringValue]);
    
    
    [self setHeight: h];
    
    [self setWidth: w];
    
    
    NSLog([@(height) stringValue]);
    
    //creates a dummy planty
    PlantObject *myPlant = [PlantObject new];
    myPlant.name = @"carrot";
    
    PlantObject *myPlant2 = [PlantObject new];
    myPlant.name = @"carrot2";
    
    self.gardenArr2d = [NSMutableArray new];
    for (int i = 0; i < h*w; i++) {
        if (i > 5) {
            [self.gardenArr2d addObject:myPlant];
        } else {
            [self.gardenArr2d addObject:myPlant2];
        }
    }
    
    //print dummy plant
    PlantObject *myPlanty = self.gardenArr2d[0];
    NSLog(myPlanty.name);
}


@end
