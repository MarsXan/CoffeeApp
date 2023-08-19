//
//  SizeType.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/19/23.
//

import Foundation

enum SizeType:String,CaseIterable {
    case small = "Small",medium = "Medium",large = "Large"
    
    var extraPrice:Double {
        switch self {
        case .small:
            return -0.5
        case .medium:
            return 0.0
        case .large:
            return 2.0
        }
    }
    
    var iconSize:CGFloat {
        switch self {
        case .small:
            return 24
        case .medium:
            return 40
        case .large:
            return 56
        }
    }
    
    var containerSize:CGFloat{
        switch self {
        case .small:
            return 64
        case .medium:
            return 80
        case .large:
            return 104
        }
    }
    
}
