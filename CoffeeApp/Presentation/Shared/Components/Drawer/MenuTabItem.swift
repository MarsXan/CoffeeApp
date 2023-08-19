//
//  MenuTabItem.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/14/23.
//

import SwiftUI

struct MenuTabItem: View {
    var tab:Tab
    var action: () -> Void = { }
    @Binding var selectedTab: Tab
    var animation: Namespace.ID

    var body: some View {
        Button {
            withAnimation(.spring()) {
                selectedTab = tab
            }
            action()
        } label: {
            HStack(spacing: 15) {
                Image(tab.image)
                    .font(.title2)
                    .foregroundColor(selectedTab == tab ? Color.coffeeRed : Color.white)
                    .frame(width:30)
                Text(tab.rawValue)
//                    .font(.custom(sansSemiBold, size: 15))
                    .foregroundColor(selectedTab == tab ? Color.coffeeRed : Color.white)

            }
                .padding(.vertical, 12)
                .padding(.horizontal, 10)
                .frame(maxWidth:getRect().width - 170,alignment: .leading)
                .background{
                if selectedTab == tab {
                    Color.white.opacity(selectedTab == tab ? 1 : 0)
                        .matchedGeometryEffect(id: "TAB", in: animation)
                        .clipShape(CustomCorner(corners: [.topRight, .bottomRight], radius: 12))
                }
                
                }

        }
    }
}


