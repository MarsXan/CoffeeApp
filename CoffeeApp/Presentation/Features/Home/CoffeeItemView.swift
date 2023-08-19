//
//  CoffeeItemView.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/14/23.
//

import SwiftUI
import SDWebImageSwiftUI

struct CoffeeItemView: View {
    var item:Product
    var body: some View {
        ZStack(alignment:.top){
            VStack(alignment: .leading,spacing:0){
                Text(item.name)
                    .font(.header4)
                    .foregroundColor(.coffeeDark)
                    .padding(.bottom, 4)
                    .padding(.top,24)
                
                Text("with milk")
                    .font(.cCaption)
                    .foregroundColor(.coffeeMud)
                
                
                Text("$\(item.price.removeZerosFromEnd())")
                    .font(.header4)
                    .foregroundColor(.coffeeDark)
                    .padding(.top,20)
                
                HStack{
                    Image(systemName: "star.fill")
                        .foregroundColor(.coffeeYellow)
                    
                    Text("\(item.score.removeZerosFromEnd())")
                        .font(.cCaptionSemiBold)
                        .foregroundColor(.coffeeDark)
                    
                }.padding(.top)
                    
            }
            .hAlign(.leading)
            .padding()
            .padding(.bottom)
            .background(.white)
            .overlay(alignment:.bottomTrailing){
                Button{
                }label:{
                    Text("+")
                     .font(.title)
                     .padding(8)
                     .foregroundColor(.white)
                }
                .frame(width: 40,height: 40)
                .background(Color.coffeeRed)
                .clipShape(CornerShape(radius: 24))
                
                    
            }
            .clipped()
            .cornerRadius(24)
            .shadow(color: .black.opacity(0.1), radius: 10, x: 5, y: 5)
            
           
            
            WebImage(url: URL(string: item.image))
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 72, height: 72)
                .clipShape(Circle())
                .padding(.top, -36)
                
            
        
        }
        
       
    }
}

struct CoffeeItemView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
