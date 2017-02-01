//
//  RandomJokesInteractor.h
//  JokesVIPER
//
//  Created by rgonzalez on 1/31/17.
//  Copyright © 2017 belatrix. All rights reserved.
//

#import "RandomJokesProtocols.h"

@interface RandomJokesInteractor : NSObject <RandomJokesInteractorInputProtocol>

@property (nonatomic, strong) id <RandomJokesAPIDataManagerProtocol> apiDataManager;

- (void) getJokes:(JokesResponseBlock) successBlock;

@end
