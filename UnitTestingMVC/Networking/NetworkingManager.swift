//
//  NetworkingManager.swift
//  UnitTestingMVC
//
//  Created by MAHIMA on 27/06/20.
//  Copyright © 2020 MAHIMA. All rights reserved.
//

import Foundation



protocol NetworkingProtocol {
    func getData(from url: String, completion: () -> ([String: Any]))
}

//MARK:- This class is responsible for interating with APIs

class NetworkingManager: NetworkingProtocol {
    func getData(from url: String, completion: () -> ([String : Any])) {
        
    }
    
}

//MARK:- This class is for mocing Networking Manager. It also conforms to the same Networking protocol. However, it will get data from local JSONs
class MockManager: NetworkingProtocol {
    func getData(from url: String, completion: () -> ([String : Any])) {
        
    }
}
