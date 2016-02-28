//
//  ViewController.m
//  Garden
//
//  Created by Wyatt Grant on 2016-02-27.
//  Copyright (c) 2016 Wyatt Grant. All rights reserved.
//

#import "ViewController.h"
#import "GardenObject.h"

@interface SimpleCollectionViewViewController ()
@property GardenObject * garden;
@property NSInteger numberOfCells;
@end

@implementation SimpleCollectionViewViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.garden = [[GardenObject alloc] init];
   
    [self.garden allocateTable:30 withWidth:30];
    
    float screenWidth = [UIScreen mainScreen].applicationFrame.size.width;
    float widthOfCell = (screenWidth)/([self.garden getWidth])-1;
    
    UICollectionViewFlowLayout *layout = (id) self.collectionView.collectionViewLayout;
    layout.itemSize = CGSizeMake(widthOfCell, widthOfCell);
    
    layout.minimumInteritemSpacing = 0.0f;
    layout.minimumLineSpacing = 1.0f;
    layout.scrollDirection = UICollectionViewScrollDirectionVertical;
    
    
    layout.sectionInset = UIEdgeInsetsMake(50, 0, 50, 0);
    
    self.numberOfCells= [self.garden getHeight]*[self.garden getWidth];
}


-(NSInteger)numberOfSectionsInCollectionView:
(UICollectionView *)collectionView {
    
    return 1; // The number of sections we want
}
-(NSInteger)collectionView:(UICollectionView *)collectionView
    numberOfItemsInSection:(NSInteger)section {
    
    return self.numberOfCells; // the number of cells we want
}

//-(IBAction)<#selector#>:(id)sender) {
//    
//}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell* cell =
    [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell"
                                              forIndexPath:indexPath]; // Create the cell from the storyboard cell
    
    
    cell.contentView.backgroundColor = [UIColor whiteColor]; // Change the background colour of the cell
    
    
    return cell; // Return the cell
}



- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    [self removeItemAtIndex:indexPath]; // a cell has been tapped call the method to delete it
}


// when the user selects a cell, and collectionView:didSelectItemAtIndexPath: is called, it then calls the following method
-(void)removeItemAtIndex:(NSIndexPath *)index {
    
    
    self.numberOfCells--; // update the data model by decrementing the int
    
    [self.collectionView deleteItemsAtIndexPaths:@[[NSIndexPath indexPathForItem:index.item inSection:0]]]; // update the interface
    
    
}

// When the user taps the Bar Button Item (Add) then the following method is called.
- (IBAction)addCell:(id)sender {
    
    self.numberOfCells++; // update the data model by incrementing the int
    
    [self.collectionView insertItemsAtIndexPaths:@[[NSIndexPath indexPathForItem:self.numberOfCells-1 inSection:0]]]; // update the interface
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
