//
//  AppStoreObject.m
//  MySimpleTableApp
//
//  Created by Chad Jones on 1/27/16.
//  Copyright (c) 2016 CollegeMobile, Inc. All rights reserved.
//

#import "GardenObject.h"

@implementation GardenObject

- (void)setWidth:w(NSInteger) {
    self.width = w;
}

- (void)setHeight:h(NSInteger) {
    self.height = h;
}

-(void)allocateTable:w(NSInteger):w(NSInteger) {
    setHeight(h);
    setWidth(w);
    self.table = new table[w][h];
}

@end
