//
//  BasketItemView.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/29/23.
//

import SwiftUI

struct BasketItemView: View {
    var basket:Basket
    @State private var count = 1
    var body: some View {
        HStack(alignment: .center){
            Image(systemName: "basket")
                .font(.title)
                .foregroundColor(.coffeeRed)
            VStack(alignment: .leading,spacing: 8){
                Text("Items: \(basket.count)")
                    .font(.cTitle)
                    .foregroundColor(.coffeeDark)
                Text("$\(basket.total.removeZerosFromEnd())")
                    .font(.cBodyBold)
                    .foregroundColor(.coffeeMud)


            }.padding(.leading,8)
            Spacer()
            
            Text(basket.createdAt,style: .date)
                .font(.cCaptionSemiBold)
                .foregroundColor(.coffeeMud)
        
          
            
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 12).fill(.white))
            .shadow(color: Color.black.opacity(0.07), radius: 5, x: 5, y: 0)
    }
}

struct BasketItemView_Previews: PreviewProvider {
    static var previews: some View {
        BasketItemView(basket: basketList[0])
    }
}
