//
//  MockJokesPresenter.h
//  JokesVIPER
//
//  Created by rgonzalez on 2/1/17.
//  Copyright © 2017 belatrix. All rights reserved.
//

#import "RandomJokesPresenter.h"

@interface MockJokesPresenter : RandomJokesPresenter

@property (nonatomic, strong) __block NSString *joke;

@end
