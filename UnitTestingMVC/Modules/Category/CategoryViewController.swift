//
//  CategoryViewController.swift
//  UnitTestingMVC
//
//  Created by MAHIMA on 27/06/20.
//  Copyright © 2020 MAHIMA. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {
    
    //MARK:- Constants
    
    struct Constants {
        static let url = "https://qadosa.decathlon.in/pim/api/v1/categories/category/1001"
    }
       
    //MARK:- IBOutlets
   
    //MARK:- Properties
    
    var categoryUrl: String?
    var networkingManager: NetworkingProtocol = NetworkingManager()

    //MARK:- Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryUrl = Constants.url
       
    }
    
    //MARK:- Private Methods
    
    func setupUI() {
        
    }

}
