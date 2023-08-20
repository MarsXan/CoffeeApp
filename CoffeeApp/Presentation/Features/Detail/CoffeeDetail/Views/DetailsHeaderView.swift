//
//  DetailsHeaderView.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/20/23.
//

import SwiftUI

struct DetailsHeaderView: View {
    var title:String
    var isFavorite:Bool = false
    var onBackPressed:()->Void = {}
    var onLikePressed:()->Void = {}
    var body: some View {
        HStack{
            Button{
                onBackPressed()
            }label: {
                Circle()
                    .fill(.white)
                    .frame(width:40,height:40)
                    .overlay{
                        Image(systemName: "chevron.left")
                            .foregroundColor(.gray.opacity(0.4))
                    }
            }
            
            Spacer()
            Button{
                onLikePressed()
            }label: {
                Circle()
                    .fill(.white)
                    .frame(width:40,height:40)
                    .overlay{
                        Image(systemName: "heart.fill")
                            .foregroundColor(isFavorite ? .red : .gray.opacity(0.4))
                    }
            }
            
        }.overlay{
            Text(title)
                .font(.header2)
                .foregroundColor(.white)
        }
    }
}

struct DetailsHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsHeaderView(title: "Cappucino")
    }
}
