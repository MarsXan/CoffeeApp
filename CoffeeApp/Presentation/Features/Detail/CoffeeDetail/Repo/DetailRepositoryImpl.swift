//
//  DetailRepositoryImpl.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/20/23.
//

import Foundation
import Combine
import Defaults

struct DetailRepositoryImpl:DetailRepository{
    func disLikeProduct(catName: String, productName: String) -> AnyPublisher<String, Error> {
        return Future<String, Error> { promise in
            var likedProducts = Defaults[.likedProducts]
            likedProducts.removeAll(where: {$0 == productName})
            Defaults[.likedProducts] = likedProducts
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                promise(.success("Succed"))
            }
        }.eraseToAnyPublisher()
    }
    
    func getProductDetail(catName: String, productName: String) -> AnyPublisher<Product?, Error> {
        return Future<Product?, Error> { promise in
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                promise(.success(categoryList.first(where: {$0.id == catName})?.products.first(where:{$0.name == productName})))
            }
        }.eraseToAnyPublisher()
    }
    
    func likeProduct(catName: String, productName: String) -> AnyPublisher<String, Error> {
        return Future<String, Error> { promise in
            var likedProducts = Defaults[.likedProducts]
            likedProducts.append(productName)
            Defaults[.likedProducts] = likedProducts
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                promise(.success("Succed"))
            }
        }.eraseToAnyPublisher()
    }
    
    
}
