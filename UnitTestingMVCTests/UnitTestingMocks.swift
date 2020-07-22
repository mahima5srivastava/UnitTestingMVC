//
//  UnitTestingMocks.swift
//  UnitTestingMVCTests
//
//  Created by MAHIMA on 02/07/20.
//  Copyright © 2020 MAHIMA. All rights reserved.
//

import Foundation
import XCTest

//MARK:- This class is for mocing Networking Manager. It also conforms to the same Networking protocol. However, it will get data from local JSONs

class MockNetworkingManager: NetworkingProtocol {
    
    //MARK:- Properties
    
    var categoryDelegate: CategoryResponseProtocol?
    
    //MARK:- Methods
    
    func getData(from urlString: String) {
        let fileName = getFileName(from: urlString)
        if let path = Bundle.main.path(forResource: fileName, ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let jsonData = try JSONDecoder().decode(CategoryModel.self, from: data)
                categoryDelegate?.handleCategoryData(jsonData)
            } catch {
                categoryDelegate?.handleCategoryError(error)
            }
        }
    }
    
    //MARK:- Private Methods
    
    private func getFileName(from url: String) -> String {
        var fileName = ""
        var plistDict: NSDictionary?
        if let path = Bundle.main.path(forResource: "Info", ofType: "plist") {
            plistDict = NSDictionary(contentsOfFile: path)
        }
        fileName = ((plistDict?["ApiJsonMapper"] as? [String: Any])?[url] as? String)  ?? ""
        return fileName
    }
    
}

class CategoryViewControllerStub : CategoryViewController {
    var isDataReceived = false
    
    override func handleCategoryError(_ error: Error) {
        print("*************************")
        print(#function)
    }
    override func handleCategoryData(_ data: CategoryModel) {
        isDataReceived = true
        XCTAssert(data.categoryId == 1234567890) //Not required just for testing
    }
}
