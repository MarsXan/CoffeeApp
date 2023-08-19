//
//  HomeEvent.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/15/23.
//

import Foundation

enum HomeEevent{
    case getCategories
    case getProducts(String)
    case selectCategory(Category)
    case selectProduct(Product)
}
