//
//  DetailRepository.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/20/23.
//

import Foundation
import Combine

protocol DetailRepository {
    func getProductDetail(catName:String,productName:String)->AnyPublisher<Product?,Error>
    func likeProduct(catName:String,productName:String)->AnyPublisher<String,Error>
    func disLikeProduct(catName:String,productName:String)->AnyPublisher<String,Error>
}
