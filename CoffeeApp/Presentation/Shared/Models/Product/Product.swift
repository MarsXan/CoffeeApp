//
//  Product.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/15/23.
//

import FirebaseFirestoreSwift

struct Product:Identifiable,Codable,Hashable {
    var id: String
    var name: String
    var price: Double
    var image: String
    var description: String
    var category: CategoryType
    var isFavorite: Bool = false
    var score: Double = Double.random(in: 3...5).round(to: 1)
    
}
