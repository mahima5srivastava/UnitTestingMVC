//
//  NetworkingManager.swift
//  UnitTestingMVC
//
//  Created by MAHIMA on 27/06/20.
//  Copyright © 2020 MAHIMA. All rights reserved.
//

import Foundation

//MARK:- This class is responsible for interating with APIs

struct NetworkingManager: NetworkingProtocol {
    
    //MARK:- Properties
    
    weak var categoryDelegate: CategoryResponseProtocol?

    //MARK:- Properties
    
    func getData(from urlString: String) {
        guard let url = URL(string: urlString) else {return}
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            do {
                let jsonData = try JSONDecoder().decode(CategoryModel.self, from: data)
                self.categoryDelegate?.handleCategoryData(jsonData)
                
            } catch {
                self.categoryDelegate?.handleCategoryError(error)
            }
        }.resume()
    }
    
}

