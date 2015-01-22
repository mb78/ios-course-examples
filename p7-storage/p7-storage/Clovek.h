//
//  Clovek.h
//  p7-storage
//
//  Created by student on 22.01.15.
//  Copyright (c) 2015 student. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Mesto;

@interface Clovek : NSManagedObject

@property (nonatomic, retain) NSDecimalNumber* vek;
@property (nonatomic, retain) NSString * meno;
@property (nonatomic, retain) Mesto *bydlisko;

@end
