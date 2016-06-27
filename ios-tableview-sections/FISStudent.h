//
//  FISStudent.h
//  ios-tableview-sections
//
//  Created by Ryan Cohen on 6/27/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISStudent : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSArray *favoriteThings;

- (instancetype)initWithName:(NSString *)name
                        food:(NSString *)food
                       color:(NSString *)color
                      artist:(NSString *)artist
                        game:(NSString *)game;

@end
