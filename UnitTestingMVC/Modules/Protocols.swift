
//
//  Protocols.swift
//  UnitTestingMVC
//
//  Created by MAHIMA on 09/07/20.
//  Copyright © 2020 MAHIMA. All rights reserved.
//

import Foundation

protocol CategoryResponseProtocol: class {
    func handleCategoryData(_ data: CategoryModel)
    func handleCategoryError(_ error: Error)
}

protocol NetworkingProtocol {
    var categoryDelegate: CategoryResponseProtocol? {get set}
    func getData(from urlString: String)
}

protocol MobileNumberValidator {
    func isNumberValid(_ phone: String) -> Bool
}

protocol 
