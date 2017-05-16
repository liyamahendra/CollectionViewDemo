//
//  ViewController.m
//  CollectionViewDemo
//
//  Created by Mahendra Liya on 5/16/17.
//  Copyright © 2017 Adobe Systems. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewCell.h"

#define NUMBER_OF_SECTIONS  3


@interface ViewController ()

@end

@implementation ViewController

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return NUMBER_OF_SECTIONS;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    if(section % 3 == 0) {
        return 10;
    } else if(section % 3 == 1) {
        return 12;
    } else {
        return 15;
    }
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    if(indexPath.section % 3 == 0) {
        cell.childView.backgroundColor = [UIColor redColor];
    } else if(indexPath.section % 3 == 1) {
        cell.childView.backgroundColor = [UIColor greenColor];
    } else {
        cell.childView.backgroundColor = [UIColor blueColor];
    }
    
    return cell;
}


@end
