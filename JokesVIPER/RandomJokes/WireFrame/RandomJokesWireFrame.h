//
//  RandomJokesWireFrame.h
//  JokesVIPER
//
//  Created by rgonzalez on 1/31/17.
//  Copyright © 2017 belatrix. All rights reserved.
//

#import "RandomJokesProtocols.h"
#import "RandomJokesView.h"
#import "RandomJokesPresenter.h"
#import "RandomJokesInteractor.h"
#import "RandomJokesAPIDataManager.h"

@interface RandomJokesWireFrame : NSObject <RandomJokesWireFrameProtocol>

+ (void)presentRandomJokesModuleFrom:(id)fromView;
+ (UIViewController*) initialViewController;

@end
