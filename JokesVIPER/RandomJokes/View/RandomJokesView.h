//
//  RandomJokesView.h
//  JokesVIPER
//
//  Created by rgonzalez on 2/1/17.
//  Copyright © 2017 belatrix. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RandomJokesProtocols.h"

@interface RandomJokesView : UIViewController <RandomJokesViewProtocol>

@property (nonatomic, strong) id <RandomJokesPresenterProtocol> presenter;

- (void) showJoke:(NSString*)joke;

@end
