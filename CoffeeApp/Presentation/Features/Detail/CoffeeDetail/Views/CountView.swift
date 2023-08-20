//
//  CountView.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/20/23.
//

import SwiftUI

struct CountView: View {
    @Binding var count:Int
    var onIncrease:()->Void = {}
    var onDecrease:()->Void = {}
    
    
    var body: some View {
        HStack(spacing:16){
            Button{
                if count > 0 {
                    onDecrease()
                }
            }label: {
                Image(Icons.minus)
                    .resizable()
                    .frame(width:40,height:40)
            }
            
            Text("\(count)")
                .font(.header4)
            
            Button{
               onIncrease()
            }label: {
                Image(Icons.add)
                    .resizable()
                    .frame(width:40,height:40)
            }
            
        }.padding(.bottom,32)
    }
}

struct CountView_Previews: PreviewProvider {
    static var previews: some View {
        CountView(count: .constant(1))
        
    }
}
