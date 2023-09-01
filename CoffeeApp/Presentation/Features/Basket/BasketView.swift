//
//  BasketView.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/29/23.
//

import SwiftUI

struct BasketView: View {
    @EnvironmentObject var router: MainRouter
    var body: some View {
        ZStack{
            Color.coffeeLight
                .ignoresSafeArea()
            VStack(alignment:.leading){
                Text("My Baskets")
                    .font(.header3)
                    .foregroundColor(.coffeeDark)
                    .padding(.top)
                
                Group{Text("You have ").foregroundColor(.coffeeDark) + Text("\(basketList.count) items").foregroundColor(.coffeeRed) + Text(" in your List.").foregroundColor(.coffeeDark)}
                    .font(.cCaptionSemiBold)
                    
                    .padding(.top,8)
                
                ScrollView(.vertical,showsIndicators: false){
                    VStack{
                        ForEach(Array(basketList.enumerated()),id:\.element){index,basket in
                            BasketItemView(basket: basket)
                                .padding(.bottom)
                                .onTapGesture{
                                    router.presentBasketDetail(basket: basket)
                                }
                        }
                    }
                }
                .padding(.top)
                
                
            }.padding(.horizontal)
        }
    }
}

struct BasketView_Previews: PreviewProvider {
    static var previews: some View {
        BasketView()
    }
}
