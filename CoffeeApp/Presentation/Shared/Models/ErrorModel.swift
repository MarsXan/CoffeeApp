//
//  ErrorModel.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/15/23.
//

import Foundation

struct ErrorModel: Codable,Error {
    var code: Int?
    var message: String?
}
