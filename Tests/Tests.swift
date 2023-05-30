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
                
                res = (data != nil && data?.deviceId != nil)
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
    
    func testDeleteUser() throws {
        
        OpenAPIClientAPI.basePath = "http://localhost:5000"
        let expectation = self.expectation(description: "Scaling")
        var res: Bool?
        
        AuthAPI.authAuthenticate(userOtpCredential: UserOtpCredential(email: "me@me.com", password: "")) { data, error in
            
            let jsonData = data?.stringValue.data(using: .utf8)!
            let blogPost: String = try! JSONDecoder().decode(String.self, from: jsonData!)

            OpenAPIClientAPI.customHeaders["Authorization"] = "Bearer " + blogPost
            
            AuthUserAPI.authUserDeleteAccount(completion: { data1, error in
                guard error == nil else {
                    
                    XCTFail(error.debugDescription)
                   
                    return
                }

                expectation.fulfill()
                
                res = (data1 != false)
            })
        }
        
        waitForExpectations(timeout: 10.0, handler: nil)

        XCTAssertEqual(res, true)
    }
    
    func testFindAdvventures() throws {
        
        OpenAPIClientAPI.basePath = "http://localhost:5000"
        let expectation = self.expectation(description: "Scaling")
        var res: Bool?
        
        AdventuresAPI.find(blogQuery: BlogQuery(page: 0, pageSize: 10)) { data, error in
            
            guard error == nil else {
                
                XCTFail(error.debugDescription)
               
                return
            }

            expectation.fulfill()
            
            res = (data!.count > 0)
            
           
        }
        
        waitForExpectations(timeout: 10.0, handler: nil)

        XCTAssertEqual(res, true)
    }
    
    func testFindAdventureCategories() throws {
        
        OpenAPIClientAPI.basePath = "http://localhost:5000"
        let expectation = self.expectation(description: "Scaling")
        var res: Bool?
        
        AdventuresAPI.getCategories { data, error in
            guard error == nil else {
                
                XCTFail(error.debugDescription)
               
                return
            }

            expectation.fulfill()
            
            res = (data!.count > 0)
        }
        
        
        
        waitForExpectations(timeout: 10.0, handler: nil)

        XCTAssertEqual(res, true)
    }
    
    func testFindBlogPosts() throws {
        
        OpenAPIClientAPI.basePath = "https://api.shinyflake.me"
        let expectation = self.expectation(description: "Scaling")
        var res: Bool?
        
        BlogPostsAPI.blogPostsFind(blogQuery: BlogQuery(page: 0, pageSize: 10)) { data, error in
            
            guard error == nil else {
                
                XCTFail(error.debugDescription)
               
                return
            }

            expectation.fulfill()
            
            res = (data!.count > 0)
            
           
        }
        
        waitForExpectations(timeout: 10.0, handler: nil)

        XCTAssertEqual(res, true)
    }
    
    func testRegister() throws {
        
        OpenAPIClientAPI.basePath = "http://localhost:5000"
        let expectation = self.expectation(description: "Scaling")
        var res: Bool?
        
        let image = URL(fileURLWithPath: "/Users/nikola/projects/shinyflake/shinyflake.ios.lib/Tests/1517252093703.jpeg")
        let d = try Data(contentsOf: image)
        
        
        let model = UserRegistrationModel(
            email: "nikola@me.com",
            firstName: "Nikola",
            lastname: "Derikonjic",
            title: "Mr",
            password: "nikola",
            photo: d,
            service: UserService.Trekking,
            deviceId: "123",
            deviceType: UserDeviceType.Ios
            
        )
        
        AuthAPI.authRegisterV2(model: model, completion: { data, response, error in
            guard error == nil else {
                
                XCTFail(error.debugDescription)
               
                return
            }

            expectation.fulfill()
            
            let r = response as? HTTPURLResponse
            
            res = r!.statusCode == 200
        })
        
        
        
        waitForExpectations(timeout: 10.0, handler: nil)

        XCTAssertEqual(res, true)
    }
    
    
    func testUpdateProfilePhoto() throws {
        
        OpenAPIClientAPI.basePath = "http://localhost:5000"
        let expectation = self.expectation(description: "Scaling")
        var res: Bool?
        
        let image = URL(fileURLWithPath: "/Users/nikola/projects/shinyflake/shinyflake.ios.lib/Tests/1517252093703.jpeg")
        let d = try Data(contentsOf: image)
        
        AuthAPI.authAuthenticate(userOtpCredential: UserOtpCredential(email: "nikola@pregmatch.org", password: "sofija2501")) { data, error in
            
            let jsonData = data?.stringValue.data(using: .utf8)!
            let blogPost: String = try! JSONDecoder().decode(String.self, from: jsonData!)
            
            OpenAPIClientAPI.customHeaders["Authorization"] = "Bearer " + blogPost
            
            AuthUserAPI.updateProfilePhoto(model: d, completion: { data, response, error in
                guard error == nil else {
                    
                    XCTFail(error.debugDescription)
                    
                    return
                }
                
                expectation.fulfill()
                
                let r = response as? HTTPURLResponse
                print(r!.statusCode)
                print(r!.url?.description)
                res = r!.statusCode == 200
            })
        }
        
        
        waitForExpectations(timeout: 10.0, handler: nil)

        XCTAssertEqual(res, true)
    }
    
    
    func testAddDevice() throws {
        
        OpenAPIClientAPI.basePath = "http://localhost:5000"
        let expectation = self.expectation(description: "Scaling")
        var res: Bool?
        
        
        
        let model = UserUpdateDeviceId(
            deviceId: "123",
            deviceType: UserDeviceType.Ios
            
        )
        
        AuthAPI.addDevice(deviceModel: model, completion: { data, error in
            guard error == nil else {
                
                XCTFail(error.debugDescription)
               
                return
            }

            expectation.fulfill()
            
            res = data == "123"
        })
        
        
        
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
                        
