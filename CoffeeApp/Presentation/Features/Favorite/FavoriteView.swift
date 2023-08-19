//
//  FavoriteView.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/15/23.
//

import SwiftUI

struct FavoriteView: View {
    @Namespace var animation
    @EnvironmentObject var router:MainRouter
    var body: some View {
        ZStack{
            Color.coffeeLight
                .ignoresSafeArea()
            Text("Favorite View")
                .onTapGesture {
                    print("Cliked")
                    router.presentDetailView(product: Product(id: "", name: "", price: 123456, image: "", description: "", category: .bakery), animation: animation)
                }
        }
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
    }
}
