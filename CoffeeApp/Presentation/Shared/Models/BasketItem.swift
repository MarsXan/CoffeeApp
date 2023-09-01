//
//  BasketItem.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/29/23.
//

import Foundation

struct BasketItem:Identifiable,Hashable {
    var id = UUID()
    var product:Product
    var quantity:Int
    var createdAt:Date
    var extraPrice:Double = 0
    var total:Double{
        return (product.price * Double(quantity)) + extraPrice
    }
    
}

