//
//  RandomJokesPresenter.h
//  JokesVIPER
//
//  Created by rgonzalez on 1/31/17.
//  Copyright © 2017 belatrix. All rights reserved.
//


#import "RandomJokesProtocols.h"

@interface RandomJokesPresenter : NSObject <RandomJokesPresenterProtocol>

@property (nonatomic, weak) id <RandomJokesViewProtocol> view;
@property (nonatomic, strong) id <RandomJokesInteractorInputProtocol> interactor;
@property (nonatomic, strong) id <RandomJokesWireFrameProtocol> wireFrame;

- (void) didRequestJoke;

@end
