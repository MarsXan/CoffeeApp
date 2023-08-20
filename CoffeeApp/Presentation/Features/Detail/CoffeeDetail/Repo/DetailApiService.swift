//
//  DetailApiService.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/20/23.
//

import Foundation
import Combine

struct DetailApiService :DetailRepository{
    @Inject var repository:DetailRepository
    func getProductDetail(catName: String, productName: String) -> AnyPublisher<Product?, Error> {
        repository.getProductDetail(catName: catName, productName: productName)
    }
    
    func likeProduct(catName: String, productName: String) -> AnyPublisher<String, Error> {
        repository.likeProduct(catName: catName, productName: productName)
    }
    
    func disLikeProduct(catName: String, productName: String) -> AnyPublisher<String, Error> {
        repository.disLikeProduct(catName: catName, productName: productName)
    }
    
    
}
