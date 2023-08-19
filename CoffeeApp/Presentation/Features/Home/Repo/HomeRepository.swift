//
//  HomeRepository.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/15/23.
//

import Foundation
import Combine


protocol HomeRepository {
    func getCategories() -> AnyPublisher<[Category], Error>
    func getProducts(catId:String) -> AnyPublisher<[Product], Error>
}

