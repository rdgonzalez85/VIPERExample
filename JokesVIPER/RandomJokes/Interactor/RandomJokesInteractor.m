//
//  RandomJokesInteractor.m
//  JokesVIPER
//
//  Created by rgonzalez on 1/31/17.
//  Copyright © 2017 belatrix. All rights reserved.
//

#import "RandomJokesInteractor.h"

@implementation RandomJokesInteractor

#pragma mark - RandomJokesInteractorInputProtocol

- (void) getJokes:(JokesResponseBlock) successBlock {
    [self.apiDataManager getJokes:successBlock];
}

@end
