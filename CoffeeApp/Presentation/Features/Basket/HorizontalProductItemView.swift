//
//  HorizontalProductItemView.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/28/23.
//

import SwiftUI
import SDWebImageSwiftUI

struct HorizontalProductItemView: View {
    var product:Product
    @State private var count = 1
    var body: some View {
        HStack(alignment: .center){
            WebImage(url: URL(string: product.image))
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)
                .clipShape(Circle())
            VStack(alignment: .leading,spacing: 8){
                Text(product.name)
                    .font(.cTitle)
                    .foregroundColor(.coffeeDark)
                
                Text("with milk")
                    .font(.cCaption)
                    .foregroundColor(.coffeeMud)
                
                Text("$\(product.price.removeZerosFromEnd())")
                    .font(.cBodyBold)
                    .foregroundColor(.coffeeMud)
            }
            Spacer()
            CountView(count: $count, onIncrease: {
                count += 1
            }, onDecrease: {
                if count > 0 {
                    count -= 1
                }
            })
            
        
            
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 12).fill(.white))
            .shadow(color: Color.black.opacity(0.07), radius: 5, x: 5, y: 0)
    }
}

struct HorizontalProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalProductItemView(product:categoryList[0].products[0])
    }
}
