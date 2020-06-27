//
//  UnitTestingMVCTests.swift
//  UnitTestingMVCTests
//
//  Created by MAHIMA on 27/06/20.
//  Copyright © 2020 MAHIMA. All rights reserved.
//

import XCTest
@testable import UnitTestingMVC

class UnitTestingMVCTests: XCTestCase {
    var categoryViewController: CategoryViewController?
    
    override func setUpWithError() throws {
      categoryViewController = CategoryViewController()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
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
    
    func testCategoryUrl() {
        categoryViewController?.viewDidLoad()
        XCTAssert(categoryViewController?.categoryUrl == "URL string") 
        
    }

}
