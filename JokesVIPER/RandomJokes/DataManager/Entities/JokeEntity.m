//
//  JokeEntity.m
//  JokesVIPER
//
//  Created by rgonzalez on 1/31/17.
//  Copyright © 2017 belatrix. All rights reserved.
//

#import "JokeEntity.h"

@implementation JokeEntity

- (instancetype) init:(NSDictionary *)dictionary {
    if (self = [self init]) {
        self.identifier = dictionary[@"id"];
        self.categories = dictionary[@"categories"];
        self.joke = dictionary[@"joke"];
    }
    return self;
}

@end
