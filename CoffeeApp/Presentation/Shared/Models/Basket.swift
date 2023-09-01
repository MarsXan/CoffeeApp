//
//  Basket.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/29/23.
//

import Foundation

struct Basket:Identifiable,Hashable {
    var id = UUID()
    var items:[BasketItem] = []
    var total:Double{
        return items.map{$0.total}.reduce(0,+)
    }
    var count:Int{
        return items.count
    }
    var createdAt:Date
    
    
}

var basketList:[Basket] = [
    .init(items: [
        .init(product: categoryList[0].products[0], quantity: 1, createdAt: Date()),
        .init(product: categoryList[0].products[1], quantity: 1, createdAt: Date()),
        .init(product: categoryList[0].products[2], quantity: 1, createdAt: Date()),
        .init(product: categoryList[0].products[3], quantity: 1, createdAt: Date()),
        
    ], createdAt: Date()),
    
    .init(items: [
        .init(product: categoryList[1].products[0], quantity: 1, createdAt: Date()),
        .init(product: categoryList[1].products[1], quantity: 2, createdAt: Date()),
        .init(product: categoryList[1].products[2], quantity: 3, createdAt: Date()),
        .init(product: categoryList[1].products[3], quantity: 4, createdAt: Date()),
        
    ], createdAt: Date()),
    
    .init(items: [
        .init(product: categoryList[2].products[0], quantity: 1, createdAt: Date()),
        .init(product: categoryList[2].products[1], quantity: 2, createdAt: Date()),
        .init(product: categoryList[2].products[2], quantity: 3, createdAt: Date()),
        .init(product: categoryList[2].products[3], quantity: 4, createdAt: Date()),
        
    ], createdAt: Date()),
    
]
