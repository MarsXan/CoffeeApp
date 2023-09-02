//
//  OnbaordingModel.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 9/2/23.
//

import Foundation

struct OnboardingModel: Identifiable {
    var id: UUID = UUID()
    var image: String
    var title: String
    var description: String = ""
}

var onboardingList: [OnboardingModel] = [
    .init(image: Images.coffee1, title: "Cappuccino", description: "Cappuccino is a coffee drink made with espresso and steamed milk foam."),
    .init(image: Images.coffee2, title: "Espresso", description: "Espresso is a coffee-brewing method of Italian origin, in which a small amount of nearly boiling water is forced under pressure through finely-ground coffee beans."),
    .init(image: Images.coffee3, title: "Latte", description: "Caffè latte is a coffee drink made with espresso and steamed milk."),
]

