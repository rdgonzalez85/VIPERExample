//
//  JokeEntity.h
//  JokesVIPER
//
//  Created by rgonzalez on 1/31/17.
//  Copyright © 2017 belatrix. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JokeEntity : NSObject

@property (nonatomic, assign) NSNumber *identifier;
@property (nonatomic, strong) NSString *joke;
@property (nonatomic, strong) NSArray *categories;

- (instancetype) init:(NSDictionary*) dictionary;

@end

