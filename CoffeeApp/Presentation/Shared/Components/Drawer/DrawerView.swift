//
//  DrawerView.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/14/23.
//

import SwiftUI

struct DrawerView: View {
    
    @Binding var selectedTab:Tab
    @Namespace var animation
    
    var body: some View {
            VStack(alignment: .leading, spacing:15) {
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 70,height: 70)
                    .clipShape(Circle())
                    .padding(.top,50)
                
                VStack(alignment:.leading,spacing:5){
                    Text("Mohsen Mokhtari")
//                        .font(.custom(sansBold, size: 25))
                        .foregroundColor(.white)
                    Button{
                        
                    }label: {
                        Text("View Profile")
//                            .font(.custom(sansSemiBold, size: 15))
                            .foregroundColor(.white)
                    }
                    
                }
                
                VStack(alignment:.leading,spacing:10){
                    MenuTabItem(
                        tab: .home,
                        selectedTab: $selectedTab,
                        animation: animation
                    )
                    MenuTabItem(
                        tab: .basket,
                        selectedTab: $selectedTab,
                        animation: animation
                    )
                    MenuTabItem(
                        tab: .orders,
                        selectedTab: $selectedTab,
                        animation: animation
                    )
                    MenuTabItem(
                        tab: .favorites,
                        selectedTab: $selectedTab,
                        animation: animation
                    )
                    
                    MenuTabItem(
                        tab: .profile,
                        selectedTab: $selectedTab,
                        animation: animation
                    )
                    
                }
                .padding(.leading,-15)
                .padding(.top,50)
                
                Spacer()
                VStack(alignment:.leading,spacing:6){
                        Button {
                        } label: {
                            HStack(spacing: 15) {
                                Image(systemName: "rectangle.righthalf.inset.fill.arrow.right")
                                    .font(.title2)
                                    .foregroundColor(Color.white)
                                    .frame(width:30)
                                Text("LogOut")
//                                    .font(.custom(sansSemiBold, size: 15))
                                    .foregroundColor(Color.white)

                            }
                                .padding(.vertical, 12)
                                .padding(.horizontal, 10)
                                

                        }
                            .padding(.leading,-15)
                        Text("App Version 1.2.34")
                            .font(.caption)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .opacity(0.6)
                    
                    
                    
                   
                }
                
                    
            
            }
            .padding()
            .hAlign(.leading)
            .vAlign(.top)
        
    }
}


