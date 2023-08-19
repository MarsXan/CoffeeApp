//
//  MainHeaderView.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/14/23.
//

import SwiftUI

struct MainHeaderView: View {
    var body: some View {
        HStack{
           
            
            
            Spacer()
            
            Button{
                
            }label:{
                Image(Icons.search)
            }
            
            
        }.overlay{
            Text("StarCoffee")
                .font(.header1)
                .foregroundColor(.coffeeDark)
        }
    }
}

struct MainHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MainHeaderView()
    }
}
