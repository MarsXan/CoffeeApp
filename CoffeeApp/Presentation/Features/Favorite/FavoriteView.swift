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
               
        }
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
    }
}
