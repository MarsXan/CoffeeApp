//
//  OrderListView.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/15/23.
//

import SwiftUI

struct OrderListView: View {
    var body: some View {
        ZStack{
            Color.coffeeLight
                .ignoresSafeArea()
            Text("Order View")
        }
    }
}

struct OrderList_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView()
    }
}
