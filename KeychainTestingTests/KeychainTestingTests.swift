//
//  KeychainTestingTests.swift
//  KeychainTestingTests
//
//  Created by Nicholas Kearns on 6/10/20.
//  Copyright © 2020 Nicholas Kearns. All rights reserved.
//

import XCTest
@testable import KeychainTesting
import KeychainAccess

class KeychainTestingTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testAddKeychainItem() {
        let keychain = Keychain()
        
        keychain["test1"] = "testing keychain"
        
        XCTAssert(keychain["test1"] == "testing keychain")
    }
    
    func testDeleteKeychainItem() {
        let keychain = Keychain()
        
        keychain["test2"] = "testing keychain"
        
        XCTAssert(keychain["test2"] == "testing keychain")
        
        keychain["test2"] = nil
        
        XCTAssert(keychain["test2"] == nil)
    }
    
    

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
