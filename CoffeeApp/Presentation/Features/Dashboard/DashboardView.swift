//
//  DashboardView.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 9/2/23.
//

import SwiftUI

struct DashboardView: View {
    @State var activeTab = Tab.home
    @State private var showMenu: Bool = false
    @State private var bgColor =  Color.coffeeLight
    @EnvironmentObject var router: MainRouter
    
    
    var body: some View {
        ZStack {
            bgColor.ignoresSafeArea()
            ScrollView(getRect().height < 750 ? .vertical : .init(), showsIndicators: false) {
                DrawerView(selectedTab: $activeTab)
            }
            ZStack {
                shadowContent()
                content()
                
            }
            .background(.white)
            .scaleEffect(showMenu ? 0.8 : 1)
            .offset(x: showMenu ? getRect().width - 120: 0)
            .zIndex(10)
            .overlay(alignment: .topLeading) {
                menuButton()
            }
            
        }
    }
    

@ViewBuilder
private func content() -> some View {
    ZStack(alignment: .bottom) {
        Color.coffeeLight.ignoresSafeArea()
   
        VStack{
            MainHeaderView()
                .padding(.top)
                .padding(.horizontal,24)
            TabView(selection: $activeTab) {
                HomeView()
                    .environmentObject(router)
                    .tag(Tab.home)
                BasketView()
                    .environmentObject(router)
                    .tag(Tab.basket)
                OrderListView()
                    .tag(Tab.orders)
                FavoriteView()
                    .environmentObject(router)
                    .tag(Tab.favorites)
                ProfileView()
                    .tag(Tab.profile)
            }
        }
        .frame(width: getRect().width)
        
        CustomTabBar(activeTab: $activeTab, tint: .coffeeRed, inactiveTint: .coffeeLight)
        .frame(width: getRect().width)
        .zIndex(2)
        .background{
            CurvedShape(height: 80)
            .fill(Color.coffeeDark)
            .padding(.top,10)


        }
           
    }

}

@ViewBuilder
private func shadowContent() -> some View{
    ZStack{
        Color.white
            .cornerRadius(showMenu ? 16 : 0)
            .opacity(0.5)
            .shadow(color: Color.black.opacity(0.07), radius: 5, x: -5, y: 0)
            .offset(x: showMenu ? -25 : 0)
            .padding(.vertical, 30)

        Color.white
            .cornerRadius(showMenu ? 16 : 0)
            .opacity(0.4)
            .shadow(color: Color.black.opacity(0.07), radius: 5, x: -5, y: 0)
            .offset(x: showMenu ? -50 : 0)
            .padding(.vertical, 60)
    }
}

@ViewBuilder
private func menuButton() -> some View {
    Button {
        withAnimation(.spring()) {
            showMenu.toggle()
            if showMenu {
                bgColor = .coffeeMud
            }else{
                bgColor = .coffeeLight
            }
        }
    } label: {
        HStack{
            VStack(spacing: 4) {
                Capsule()
                    .fill(Color.coffeeRed)
                    .frame(width: 25, height: 3)
                    .rotationEffect(.init(degrees: showMenu ? -50 : 0))
                    .offset(x: 0, y: showMenu ? 8 : 0)
                VStack(spacing: 4) {
                    

                    Capsule()
                        .fill(Color.coffeeRed)
                        .frame(width: 25, height: 3)
                       
                }.rotationEffect(.init(degrees: showMenu ? 50 : 0))
            }
            Spacer()
            
        }
    }
    .padding()
    .padding(.top,11)
}
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
