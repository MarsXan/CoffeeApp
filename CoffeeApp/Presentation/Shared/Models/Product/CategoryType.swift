//
//  CategoryType.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/14/23.
//

import Foundation

enum CategoryType:String,CaseIterable,Codable{
    case hotTeas = "Hot Teas"
    case iceTeas = "Ice Teas"
    case hotCoffees = "Hot Coffees"
    case drinks = "Drinks"
    case bakery = "Bakery"
    case pizza = "Pizza"
    
    var index:Int{
        return CategoryType.allCases.firstIndex(of: self) ?? 0
    }
}
