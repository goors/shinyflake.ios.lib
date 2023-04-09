//
//  ShinyFlakeTests.swift
//  ShinyFlakeTests
//
//  Created by Nikola Derikonjic on 7.4.23..
//

import XCTest
@testable import ShinyFlakeApiClient

final class ShinyFlakeTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testBookingsCheckIfDateIsAvailable() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        // BookingsAPI.bookingsGetBookedDates { data, error in
            
        // }
        
        let expectation = self.expectation(description: "Scaling")
        var res: Bool?
        BookingsAPI.bookingsCheckIfDateIsAvailable(start: Date(), end: Date(), completion: { data, error in
            print("=======")
            print(data)
            print("=======")
            
            expectation.fulfill()
            
            res = data
            
            // XCTAssertEqual(data, true)
        })
        
        waitForExpectations(timeout: 5, handler: nil)

        XCTAssertEqual(res, true)
        
        
        // BookingsAPI.bookingsCheckIfDateIsAvailable(start: Date(), end: Date()) { data, error in
        //     print(data)
        // }
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
