//
//  RandomJokesPresenter.m
//  JokesVIPER
//
//  Created by rgonzalez on 1/31/17.
//  Copyright © 2017 belatrix. All rights reserved.
//

#import "RandomJokesPresenter.h"

@implementation RandomJokesPresenter

#pragma mark - RandomJokesPresenterProtocol

- (void) didRequestJoke {
    [self.interactor getJokes:^(JokeEntity *joke) {
        [self.view showJoke:joke.joke];
    }];
}

@end
