//
//  RandomJokesAPIDataManager.m
//  JokesVIPER
//
//  Created by rgonzalez on 1/31/17.
//  Copyright © 2017 belatrix. All rights reserved.
//

#import "RandomJokesAPIDataManager.h"


@implementation RandomJokesAPIDataManager

#pragma mark - RandomJokesAPIDataManagerProtocol

- (void) getJokes:(JokesResponseBlock) successBlock {
    NSURL *url = [self jokesURL];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
   
    [[[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSDictionary *jsonResponse = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
        
        JokeEntity *joke = [[JokeEntity alloc] init:jsonResponse[@"value"]];
        successBlock(joke);
    }] resume];
}


- (NSURL*) jokesURL {
    return [NSURL URLWithString:@"https://api.icndb.com/jokes/random"];
}

@end
