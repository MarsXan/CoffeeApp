//
//  CustomTabBar.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/14/23.
//

import SwiftUI

struct CustomTabBar: View {
    @Binding var activeTab: Tab
    var tint: Color
    var inactiveTint: Color
    @Namespace private var animation


    var body: some View {
        HStack(alignment: .bottom, spacing: 0) {
            ForEach(Tab.allCases, id: \.rawValue) { tab in
                TabItemView(tint: tint,
                        inactiveTint: inactiveTint,
                        tab: tab,
                        activeTab: $activeTab,
                        animation: animation
                )
            }
        }
        .padding(.vertical, 10)
            .padding(.horizontal, 15)
            .animation(.interactiveSpring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.7), value: activeTab)

    }
}

struct CustomTabBar_Previews: PreviewProvider {
    @State var activeTab = Tab.home
    static var previews: some View {
        MainView()
    }
}
