//
//  TabItemView.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/14/23.
//

import SwiftUI

struct TabItemView: View {
    var tint: Color
    var inactiveTint: Color
    var tab: Tab
    @Binding var activeTab: Tab
    var animation: Namespace.ID
    @State private var tabPosition: CGPoint = .zero

    var body: some View {
        VStack(spacing: 5) {
            Image( tab.image)
                .resizable()
                .renderingMode(.template)
                .aspectRatio(contentMode: .fill)
                .frame(width: activeTab == tab ? 45 : 30, height: activeTab == tab ? 35 : 20)
                .offset(y:activeTab == tab ? -30 : 0)
                .foregroundColor(activeTab == tab ? .white : inactiveTint)
                .background() {
                if activeTab == tab {
                    Circle()
                        .fill(tint)
                        .frame(width: 100,height: 100)
                        .matchedGeometryEffect(id: "ACTIVETAB", in: animation)
                        .offset(y:-30)

                }

            }
        }
            .frame(maxWidth: .infinity)
            .contentShape(Rectangle())
            
            .onTapGesture {
                activeTab = tab
                withAnimation(.interactiveSpring(response: 0.6,dampingFraction: 0.7, blendDuration: 0.7)) {
                    
                   
                }
                
        }
    }
}

