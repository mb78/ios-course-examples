//
//  Mesto.h
//  p7-storage
//
//  Created by student on 23.01.15.
//  Copyright (c) 2015 student. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Clovek;

@interface Mesto : NSManagedObject

@property (nonatomic, retain) NSString * meno;
@property (nonatomic, retain) NSSet *obyvatelia;
@end

@interface Mesto (CoreDataGeneratedAccessors)

- (void)addObyvateliaObject:(Clovek *)value;
- (void)removeObyvateliaObject:(Clovek *)value;
- (void)addObyvatelia:(NSSet *)values;
- (void)removeObyvatelia:(NSSet *)values;

@end
