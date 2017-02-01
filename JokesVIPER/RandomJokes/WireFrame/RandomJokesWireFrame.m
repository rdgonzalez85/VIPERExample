//
//  RandomJokesWireFrame.m
//  JokesVIPER
//
//  Created by rgonzalez on 1/31/17.
//  Copyright © 2017 belatrix. All rights reserved.
//

#import "RandomJokesWireFrame.h"

@implementation RandomJokesWireFrame

+ (void)presentRandomJokesModuleFrom:(id)fromView {
/*
    // Generating module components
    id <RandomJokesViewProtocol> view = [[RandomJokesView alloc] init];
    id <RandomJokesPresenterProtocol> presenter = [RandomJokesPresenter new];
    id <RandomJokesInteractorInputProtocol> interactor = [RandomJokesInteractor new];
    id <RandomJokesAPIDataManagerProtocol> APIDataManager = [RandomJokesAPIDataManager new];
    
    id <RandomJokesWireFrameProtocol> wireFrame= [RandomJokesWireFrame new];
    
    // Connecting
    view.presenter = presenter;
    presenter.view = view;
    presenter.wireFrame = wireFrame;
    presenter.interactor = interactor;
    interactor.apiDataManager = APIDataManager;
    
    //TOODO - New view controller presentation (present, push, pop, .. )
*/
}

+ (UIViewController*) initialViewController {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    RandomJokesView *view = [storyboard instantiateViewControllerWithIdentifier:@"RandomJokesViewController"];
    
    id <RandomJokesPresenterProtocol> presenter = [RandomJokesPresenter new];
    id <RandomJokesInteractorInputProtocol> interactor = [RandomJokesInteractor new];
    id <RandomJokesAPIDataManagerProtocol> APIDataManager = [RandomJokesAPIDataManager new];
    
    // we won't have any navigation on this project
    id <RandomJokesWireFrameProtocol> wireFrame= [RandomJokesWireFrame new];
    
    // Connecting
    view.presenter = presenter;
    presenter.view = view;
    presenter.wireFrame = wireFrame;
    presenter.interactor = interactor;
    interactor.apiDataManager = APIDataManager;

    return view;
}

@end
