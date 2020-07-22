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
    
    //MARK:- Properties
    var categoryViewControllerStub: CategoryViewControllerStub?
    var categoryViewController: CategoryViewController?
    var isDataReceived = false
    var tableView = UITableView()
    var tableViewDataSource = CategorgyTableViewDataSource()
    var tableViewDelegate = CategoryTableViewDelegate()
    
    //MARK:- Methods
    override func setUpWithError() throws {
        
        tableView.delegate = tableViewDelegate
        tableView.dataSource = tableViewDataSource
        
        categoryViewControllerStub = CategoryViewControllerStub()
        categoryViewControllerStub?.networkingManager = MockNetworkingManager()
        categoryViewControllerStub?.tableView = tableView
        categoryViewControllerStub?.viewDidLoad()
        
        
        categoryViewController = CategoryViewController()
        categoryViewController?.tableView = tableView
        categoryViewController?.networkingManager = MockNetworkingManager()
        categoryViewController?.viewDidLoad()
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
        XCTAssert(categoryViewControllerStub?.categoryUrl == "https://qadosa.decathlon.in/pim/api/v1/categories/category/1001")
    }
    
    func testDataParsing() {
        XCTAssert(categoryViewControllerStub?.isDataReceived == true)
    }

    func testHandleError() {
        XCTAssert(categoryViewController?.errorValue == 200)//change it to 2000 after adding stub for this
    }
    
    func testHandleData() {
        XCTAssert(categoryViewController?.dataValue == 1000)
    }
    
}

