//
//  HomeApiService.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/15/23.
//

import Foundation
import Combine

struct HomeApiService : HomeRepository{
    @Inject var repository: HomeRepository
    
    func getCategories() -> AnyPublisher<[Category], Error> {
        return repository.getCategories()
    
    }
    
    func getProducts(catId: String) -> AnyPublisher<[Product], Error> {
        return repository.getProducts(catId: catId)
    
    }
    
    
    

}
