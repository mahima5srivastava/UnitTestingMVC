//
//  CategoryViewController.swift
//  UnitTestingMVC
//
//  Created by MAHIMA on 27/06/20.
//  Copyright © 2020 MAHIMA. All rights reserved.
//

import UIKit


class CategoryViewController: UIViewController, CategoryResponseProtocol {
    
    //MARK:- IBOutlets
    
    @IBOutlet weak var tableView: UITableView!
    
    //MARK:- Properties
    
    var dataValue = 100 // Random value added for testing
    var errorValue = 200 // Random value added for testing
    var categoryUrl: String?
    var networkingManager: NetworkingProtocol = NetworkingManager()
    var tableViewDelegate: UITableViewDelegate? = CategoryTableViewDelegate()
    var tableViewDataSource: UITableViewDataSource? = CategorgyTableViewDataSource()
    weak var categoryDelegate: CategoryResponseProtocol?

    //MARK:- Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDelegates()
        setupTableView()
        categoryUrl = getCategoryURL()
        networkingManager.getData(from: categoryUrl ?? "")
        //show activity Indicator
    }
    
    //MARK:- Private Methods
    
    private func setupDelegates() {
        networkingManager.categoryDelegate = self
    }
    
    private func setupTableView() {
        tableView.delegate = tableViewDelegate
        tableView.dataSource = tableViewDataSource
    }
    
    private func getCategoryURL() -> String {
        var categoryUrl = ""
        var plistDict: NSDictionary?
        if let path = Bundle.main.path(forResource: "Info", ofType: "plist") {
            plistDict = NSDictionary(contentsOfFile: path)
        }
        categoryUrl = ((plistDict?["App URLs"] as? [String: Any])?["category"] as? String)  ?? ""
        return categoryUrl
    }
    
    //MARK:- Internal Methods
    
    func handleCategoryError(_ error: Error) {
        //hide activity indicator
        errorValue = 2000
    }
    
    func handleCategoryData(_ data: CategoryModel) {
        
        //hide activity indicator
        dataValue = 1000
    }
    
}

