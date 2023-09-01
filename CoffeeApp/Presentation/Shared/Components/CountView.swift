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
    var size = 40.0
    var spacing = 10.0
    
    
    var body: some View {
        HStack(spacing:spacing){
            Button{
                if count > 0 {
                    onDecrease()
                }
            }label: {
                Image(Icons.minus)
                    .resizable()
                    .aspectRatio( contentMode: .fill)
                    
            }.frame(width:size,height:size)
            
            Text("\(count)")
                .font(.header4)
            
            Button{
               onIncrease()
            }label: {
                Image(Icons.add)
                    .resizable()
                    .aspectRatio( contentMode: .fill)
                    
            }.frame(width:size,height:size)
            
        }
    }
}

struct CountView_Previews: PreviewProvider {
    static var previews: some View {
        CountView(count: .constant(1))
        
    }
}
