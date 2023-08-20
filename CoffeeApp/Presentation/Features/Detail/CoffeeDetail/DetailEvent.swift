//
//  DetailEvent.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/20/23.
//

import Foundation
enum DetailEvent{
    case getProductDetail(String,String)
    case addToFavorite(String,String)
    case increaseCountByOne
    case decreaseCountByOne
    case changeCupSize(SizeType)
    case disLikeProduct(String,String)
}
