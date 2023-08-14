//
//  Tab.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/14/23.
//

import SwiftUI

enum Tab:String,CaseIterable{
    case basket = "Basket"
    case orders = "Orders"
    case home = "Home"
    case favorites = "Favorites"
    case profile = "Profile"
    var image:String{
        switch self {
        case .basket:
            return Icons.basket
        case .orders:
            return Icons.orders
        case .home:
            return Icons.home
        case .favorites:
            return Icons.favorite
        case .profile:
            return Icons.profile
        }
    }
    
    var index:Int{
        return Tab.allCases.firstIndex(of: self) ?? 0
    }
    
}
