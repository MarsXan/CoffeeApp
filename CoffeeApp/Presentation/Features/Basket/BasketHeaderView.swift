//
//  BasketHeaderView.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/29/23.
//

import SwiftUI

struct BasketHeaderView: View {
    var title:String
    var isFavorite:Bool = false
    var onBackPressed:()->Void = {}
    var onDetailPressed:()->Void = {}
    var body: some View {
        HStack{
            Button{
                onBackPressed()
            }label: {
                Circle()
                    .fill(Color.coffeeRed)
                    .frame(width:40,height:40)
                    .overlay{
                        Image(systemName: "chevron.left")
                            .foregroundColor(.white)
                    }
            }
            
            Spacer()
            Button{
                onDetailPressed()
            }label: {
                Circle()
                    .fill(Color.coffeeRed)
                    .frame(width:40,height:40)
                    .overlay{
                        Image(systemName: "doc.text.magnifyingglass")
                            .foregroundColor(.white)
                    }
            }.frame(width: 40,height:40)
            
        }.overlay{
            Text(title)
                .font(.header2)
                .foregroundColor(.coffeeRed)
        }
    }
}

struct BasketHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        BasketHeaderView(title: "Cappucino")
        
    }
}
