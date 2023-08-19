//
//  HomeRepositoryImpl.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/15/23.
//

import Foundation
import Combine


struct HomeRepositoryImpl : HomeRepository{
    func getCategories() -> AnyPublisher<[Category], Error> {
        // sample data after 1 second
         return Future<[Category], Error> { promise in
             DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                 promise(.success(categoryList))
             }
         }.eraseToAnyPublisher()
    
    }
    
    func getProducts(catId: String) -> AnyPublisher<[Product], Error> {
        return Future<[Product],Error>{ promise in
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                promise(.success(categoryList.first(where: {$0.id == catId})?.products ?? []))
            }
        }.eraseToAnyPublisher()
    }
    
    
    
}
