//
//  RandomJokesView.m
//  JokesVIPER
//
//  Created by rgonzalez on 2/1/17.
//  Copyright © 2017 belatrix. All rights reserved.
//

#import "RandomJokesView.h"

@interface RandomJokesView ()

@property (weak, nonatomic) IBOutlet UILabel *jokeLabel;

@end

@implementation RandomJokesView

- (IBAction)getNextJokeTapped:(id)sender {
    [self.presenter didRequestJoke];
}

#pragma mark - RandomJokesViewProtocol

- (void) showJoke:(NSString*)joke {
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.jokeLabel setText:joke];
    });
}

@end
