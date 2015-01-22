//
//  Mesto.h
//  p7-storage
//
//  Created by student on 22.01.15.
//  Copyright (c) 2015 student. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Mesto : NSManagedObject

@property (nonatomic, retain) NSString * meno;
@property (nonatomic, retain) NSSet *obyvatelia;
@end

@interface Mesto (CoreDataGeneratedAccessors)

- (void)addObyvateliaObject:(NSManagedObject *)value;
- (void)removeObyvateliaObject:(NSManagedObject *)value;
- (void)addObyvatelia:(NSSet *)values;
- (void)removeObyvatelia:(NSSet *)values;

@end
