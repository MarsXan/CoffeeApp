//
//  DefaultsKey.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/15/23.
//

import Defaults

extension Defaults.Keys {
    static let user = Key<User?>("user")
    static let userId = Key<String>("userId",default: "-1")
    static let likedProducts = Key<[String]>("likedProducts",default: [])
}
