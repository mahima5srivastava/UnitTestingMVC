//
//  CategoryViewController.swift
//  UnitTestingMVC
//
//  Created by MAHIMA on 27/06/20.
//  Copyright © 2020 MAHIMA. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {
     
    //MARK:- IBOutlets
   
    //MARK:- Properties
    
    var categoryUrl: String?
    var networkingManager: NetworkingProtocol = NetworkingManager()

    //MARK:- Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryUrl = getCategoryURL()
    
       
    }
    
    //MARK:- Private Methods
    
    func setupUI() {
        
    }

    func getCategoryURL() -> String {
        let categoryUrl = ""
        return categoryUrl
    }
}
