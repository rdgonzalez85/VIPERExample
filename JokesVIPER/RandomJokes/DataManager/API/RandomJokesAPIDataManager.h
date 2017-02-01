//
//  RandomJokesAPIDataManager.h
//  JokesVIPER
//
//  Created by rgonzalez on 1/31/17.
//  Copyright © 2017 belatrix. All rights reserved.
//

#import "RandomJokesProtocols.h"

@interface RandomJokesAPIDataManager : NSObject <RandomJokesAPIDataManagerProtocol>

- (void) getJokes:(JokesResponseBlock) successBlock;

@end
