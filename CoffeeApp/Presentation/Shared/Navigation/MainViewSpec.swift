//
//  MainViewSpec.swift
//  rocket
//
//  Created by mohsen mokhtari on 6/12/23.
//

import SwiftUI

enum MainViewSpec: ViewSpec {
    case home
    case productDetail(Product)
}
extension MainViewSpec: Identifiable {
    
    var id: Self { self }
}
