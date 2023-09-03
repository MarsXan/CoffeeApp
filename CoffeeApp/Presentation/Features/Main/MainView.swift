//
//  MainView.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/13/23.
//

import SwiftUI

struct MainView: View {
    
    
    @StateObject private var router = MainRouter(isPresented: .constant(nil))
    @StateObject private var viewModel = MainViewModel()
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        RoutingView(router: router){
            if !viewModel.isSplashPresented {
                SplashScreen()
                    
            }else{
                if !viewModel.isOnboardingPresented{
                    OnboardingView()
                        .environmentObject(router)
                }
                else{
                    DashboardView()
                        .environmentObject(router)
                }
               
            }
                
                
            
        }
        
        

    }

    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
