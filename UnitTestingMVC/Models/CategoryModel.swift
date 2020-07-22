//
//  CategoryModel.swift
//  UnitTestingMVC
//
//  Created by MAHIMA on 02/07/20.
//  Copyright © 2020 MAHIMA. All rights reserved.
//

import Foundation

struct CategoryModel: Codable {
    var categoryOrder: Int?
    var categoryId: Int?
    var parentId: Int?
    var name: String?
    var metaTitle: String?
    var metaDescription: String?
    var level: Int?
    var slug: String?
    var children: [CategoryModel]?
}
