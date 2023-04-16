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

        let expectation = self.expectation(description: "Scaling")
        var res: Bool?
        BookingsAPI.bookingsCheckIfDateIsAvailable(start: Date(), end: Date(), completion: { data, error in
            print("=======")
            print(data)
            print("=======")
            
            expectation.fulfill()
            
            res = data

        })
        
        waitForExpectations(timeout: 5, handler: nil)

        XCTAssertEqual(res, true)
       
    }
    
    func testGetUserProfile() throws {

        OpenAPIClientAPI.basePath = "http://localhost:5000"
        let expectation = self.expectation(description: "Scaling")
        var res: Bool?
        
        AuthAPI.authAuthenticate(userOtpCredential: UserOtpCredential(email: "nikola@pregmatch.org", password: "")) { data, error in
            
            
            
            let jsonData = data?.stringValue.data(using: .utf8)!
            let blogPost: String = try! JSONDecoder().decode(String.self, from: jsonData!)
    
            
            // let d = data?.stringValue.javaScriptEscapedString()

            OpenAPIClientAPI.customHeaders["Authorization"] = "Bearer " + blogPost
            
            AuthUserAPI.authUserGetProfile { data, error in
                
                guard error == nil else {
                    
                    XCTFail(error.debugDescription)
                   
                    return
                }

                expectation.fulfill()
                
                res = (data != nil && data?.deviceIdIos != nil)
            }
            
        }
        waitForExpectations(timeout: 10.0, handler: nil)

        XCTAssertEqual(res, true)
        
        
       
    }
    
    func testUpdateUserDeviceId() throws {
        
        OpenAPIClientAPI.basePath = "http://localhost:5000"
        let expectation = self.expectation(description: "Scaling")
        var res: Bool?
        
        AuthAPI.authAuthenticate(userOtpCredential: UserOtpCredential(email: "nikola@pregmatch.org", password: "")) { data, error in
            
            let jsonData = data?.stringValue.data(using: .utf8)!
            let blogPost: String = try! JSONDecoder().decode(String.self, from: jsonData!)
    
            
            // let d = data?.stringValue.javaScriptEscapedString()

            OpenAPIClientAPI.customHeaders["Authorization"] = "Bearer " + blogPost
            
            let model = UserUpdateDeviceId(deviceId: "123", deviceType: UserDeviceType.Desktop)
            
            AuthUserAPI.authUserUpdateDeviceId(userUpdateDeviceId: model) { data1, error in
                guard error == nil else {
                    
                    XCTFail(error.debugDescription)
                   
                    return
                }

                expectation.fulfill()
                
                res = (data1 != false)
            }
        }
        
        waitForExpectations(timeout: 10.0, handler: nil)

        XCTAssertEqual(res, true)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
                                                           extension String
                                                           {
                                                               func javaScriptEscapedString() -> String
                                                               {
                                                                   // Because JSON is not a subset of JavaScript, the LINE_SEPARATOR and PARAGRAPH_SEPARATOR unicode
                                                                   // characters embedded in (valid) JSON will cause the webview's JavaScript parser to error. So we
                                                                   // must encode them first. See here: http://timelessrepo.com/json-isnt-a-javascript-subset
                                                                   // Also here: http://media.giphy.com/media/wloGlwOXKijy8/giphy.gif
                                                                   let str = self.replacingOccurrences(of: "\u{2028}", with: "\\u2028")
                                                                                 .replacingOccurrences(of: "\u{2029}", with: "\\u2029")
                                                                   // Because escaping JavaScript is a non-trivial task (https://github.com/johnezang/JSONKit/blob/master/JSONKit.m#L1423)
                                                                   // we proceed to hax instead:
                                                                   let data = try! JSONSerialization.data(withJSONObject:[str], options: [])
                                                                   let encodedString = NSString(data: data, encoding: String.Encoding.utf8.rawValue)!
                                                                   return encodedString.substring(with: NSMakeRange(1, encodedString.length - 2))
                                                               }
                                                           }
