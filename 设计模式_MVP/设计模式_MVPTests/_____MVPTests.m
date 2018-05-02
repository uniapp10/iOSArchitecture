//___FILEHEADER___

#import <XCTest/XCTest.h>
#import "ResultView.h"
#import "PersonPresenter.h"

@interface ___FILEBASENAMEASIDENTIFIER___ : XCTestCase
@property (nonatomic, strong) ResultView *resV;
@end

@implementation ___FILEBASENAMEASIDENTIFIER___

- (void)setUp {
    [super setUp];
    
    self.resV = [[ResultView alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    //测试Presenter
//    Person *person = [[Person alloc] init];
//    person.name = @"aaa";
//    person.sex = @"girl";
//
//    PersonPresenter *personPresenter = [[PersonPresenter alloc] initWithView:self.resV person:person];
//    [personPresenter showResult];
    
    //测试 View
//    [self.resV showResult:@"aaa"];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
