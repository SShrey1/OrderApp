//
//  ResponseModels.swift
//  OrderApp
//
//  Created by user@59 on 25/10/24.
//

import Foundation

struct MenuResponse : Codable {
    let items : [MenuItem]
}

struct CategoriesResponse : Codable {
    let categories : [String]
}

struct OrderResponse : Codable{
    let prepTime : Int
    
    enum CodingKeys: String, CodingKey {
        case prepTime = "prepation_time"
    }
}


struct Order : Codable{
    var menuItems : [MenuItem]
    
    init(menuItems: [MenuItem] = []) {
        self.menuItems = menuItems
    }
}
