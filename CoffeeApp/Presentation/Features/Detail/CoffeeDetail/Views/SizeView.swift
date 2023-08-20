//
//  SizeView.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/20/23.
//

import SwiftUI

struct SizeView: View {
    @Binding var selectedSize:SizeType
    var size:SizeType
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 16)
                .fill(selectedSize == size ? Color.coffeeRed : .white)
                .frame(width:size.containerSize ,height:size.containerSize)
                .overlay{
                    Image(Icons.cup)
                        .resizable()
                        .renderingMode(.template)
                        .frame(width:size.iconSize,height:size.iconSize)
                        .foregroundColor(selectedSize == size ? .white : .coffeeRed)
                }
            Text(size.rawValue)
                .font(.cBodySemiBold)
                .foregroundColor(.coffeeDark)
                .opacity(selectedSize == size ? 1 : 0.5)
        }.onTapGesture {
            withAnimation(.easeInOut){
                selectedSize = size
            }
        }
    }
}

struct SizeView_Previews: PreviewProvider {
    static var previews: some View {
        SizeView(selectedSize: .constant(.large),size: .large)
    }
}
