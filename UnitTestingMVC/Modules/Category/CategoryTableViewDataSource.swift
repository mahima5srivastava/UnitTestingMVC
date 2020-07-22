//
//  CategoryTableViewDataSource.swift
//  UnitTestingMVC
//
//  Created by MAHIMA on 02/07/20.
//  Copyright © 2020 MAHIMA. All rights reserved.
//

import Foundation
import UIKit


class CategorgyTableViewDataSource: NSObject, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }
    
    
}
