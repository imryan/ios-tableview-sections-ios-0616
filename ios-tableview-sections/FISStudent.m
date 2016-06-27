//
//  FISStudent.m
//  ios-tableview-sections
//
//  Created by Ryan Cohen on 6/27/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISStudent.h"

@implementation FISStudent

- (instancetype)initWithName:(NSString *)name
                        food:(NSString *)food
                       color:(NSString *)color
                      artist:(NSString *)artist
                        game:(NSString *)game {
    
    self = [super init];
    
    if (self) {
        _name = name;
        _favoriteThings = @[food, color, artist, game];
    }
    
    return self;
}

@end
