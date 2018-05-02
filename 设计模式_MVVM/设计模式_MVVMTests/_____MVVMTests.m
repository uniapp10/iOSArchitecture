//___FILEHEADER___

#import <XCTest/XCTest.h>
#import "Person.h"
#import "ResultViewModel.h"

@interface ___FILEBASENAMEASIDENTIFIER___ : XCTestCase

@end

@implementation ___FILEBASENAMEASIDENTIFIER___

- (void)setUp {
    [super setUp];
    
    //测试 ViewModel
    Person *person = [[Person alloc] init];
    person.name = @"dong";
    person.sex = @"boy";
    ResultViewModel *resuleViewModel = [[ResultViewModel alloc] init];
    resuleViewModel.person = person;
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
