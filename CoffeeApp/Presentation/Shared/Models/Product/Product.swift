//
//  Product.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/15/23.
//

import FirebaseFirestoreSwift

struct Product:Identifiable,Codable,Hashable {
    @DocumentID var id: String?
    var name: String
    var price: Double
    var image: String
    var description: String
    var category: CategoryType
}
