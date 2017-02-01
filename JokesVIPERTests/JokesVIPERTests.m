//
//  JokesVIPERTests.m
//  JokesVIPERTests
//
//  Created by rgonzalez on 1/31/17.
//  Copyright © 2017 belatrix. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "RandomJokesAPIDataManager.h"
#import "RandomJokesProtocols.h"
#import "MockJokesPresenter.h"
#import "RandomJokesInteractor.h"

@interface JokesVIPERTests : XCTestCase

@end

@implementation JokesVIPERTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}


- (MockJokesPresenter *) testPresenter {
    MockJokesPresenter *presenter = [MockJokesPresenter new];
    id <RandomJokesInteractorInputProtocol> interactor = [RandomJokesInteractor new];
    id <RandomJokesAPIDataManagerProtocol> APIDataManager = [RandomJokesAPIDataManager new];
    
    // Connecting
    presenter.interactor = interactor;
    interactor.apiDataManager = APIDataManager;

    return presenter;
}

- (void)testGettingJoke {
    // Create an expectation object.
    // This test only has one, but it's possible to wait on multiple expectations.
    XCTestExpectation *jokesReceivedExpectation = [self expectationWithDescription:@"jokes received"];
    
    MockJokesPresenter *presenter = [self testPresenter];
    [presenter didRequestJoke];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        XCTAssert(presenter.joke.length > 0, @"Presenter didRequestJoke has populated the joke NSString.");
        NSLog(@"joke received: %@", presenter.joke);
        [jokesReceivedExpectation fulfill];
    });
    
    [self waitForExpectationsWithTimeout:10.0 handler:nil];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
