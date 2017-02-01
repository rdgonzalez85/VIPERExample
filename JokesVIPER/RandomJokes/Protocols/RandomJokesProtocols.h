//
//  RandomJokesProtocols.h
//  JokesVIPER
//
//  Created by rgonzalez on 1/31/17.
//  Copyright © 2017 belatrix. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JokeEntity.h"

typedef void(^JokesResponseBlock)(JokeEntity *);

@protocol RandomJokesAPIDataManager;
@protocol RandomJokesInteractorInputProtocol;
@protocol RandomJokesPresenterProtocol;
@protocol RandomJokesAPIDataManagerProtocol;


@protocol RandomJokesViewProtocol
@required

@property (nonatomic, strong) id <RandomJokesPresenterProtocol> presenter;

/**
 * Add here your methods for communication PRESENTER -> VIEWCONTROLLER
 */

- (void) showJoke:(NSString*)joke;

@end

@protocol RandomJokesWireFrameProtocol
@required

+ (void)presentRandomJokesModuleFrom:(id)fromView;

/**
 * Add here your methods for communication PRESENTER -> WIREFRAME
 */

@end

@protocol RandomJokesPresenterProtocol
@required

@property (nonatomic, weak) id <RandomJokesViewProtocol> view;
@property (nonatomic, strong) id <RandomJokesInteractorInputProtocol> interactor;
@property (nonatomic, strong) id <RandomJokesWireFrameProtocol> wireFrame;

/**
 * Add here your methods for communication VIEWCONTROLLER -> PRESENTER
 */

- (void) didRequestJoke;

@end


@protocol RandomJokesInteractorOutputProtocol

/**
 * Add here your methods for communication INTERACTOR -> PRESENTER
 */

@end

@protocol RandomJokesInteractorInputProtocol
@required

//@property (nonatomic, weak) id <VIPERInteractorOutputProtocol> presenter;
    // removed presenter from the interactor in order to use blocks for callbacks
@property (nonatomic, strong) id <RandomJokesAPIDataManagerProtocol> apiDataManager;

/**
 * Add here your methods for communication PRESENTER -> INTERACTOR
 */

- (void)getJokes:(JokesResponseBlock) successBlock;

@end


@protocol RandomJokesDataManagerInputProtocol <NSObject>
@required

/**
 * Add here your methods for communication INTERACTOR -> DATAMANAGER
 */

- (void) getJokes:(JokesResponseBlock) successBlock;

@end

@protocol RandomJokesAPIDataManagerProtocol <RandomJokesDataManagerInputProtocol>

/**
 * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
 */

@end
