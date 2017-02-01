//
//  MockJokesPresenter.m
//  JokesVIPER
//
//  Created by rgonzalez on 2/1/17.
//  Copyright © 2017 belatrix. All rights reserved.
//

#import "MockJokesPresenter.h"

@implementation MockJokesPresenter

#pragma mark - RandomJokesPresenterProtocol

- (void) didRequestJoke {
    [self.interactor getJokes:^(JokeEntity *joke) {
        self.joke = joke.joke;
    }];
}

@end
