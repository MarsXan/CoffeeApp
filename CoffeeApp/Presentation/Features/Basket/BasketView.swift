//
//  BasketView.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/15/23.
//

import SwiftUI

struct BasketView: View {
    var body: some View {
        ZStack{
            Color.coffeeLight
                .ignoresSafeArea()
            Text("Basket View")
        }
    }
}

struct BasketView_Previews: PreviewProvider {
    static var previews: some View {
        BasketView()
    }
}
