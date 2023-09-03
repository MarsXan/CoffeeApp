//
//  MainViewModel.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 9/2/23.
//

import Foundation
import Defaults

class MainViewModel:BaseViewModel<MainEvent>{
        
    @Published var isSplashPresented = false
    @Published var isUserLoggedIn = false
    @Published var isOnboardingPresented = Defaults[.isOnboardingPresented]
    
    
    
    override init() {
        super.init()
        loadSetting()
    }
    
    
    
    
    
    override func onEvent(_ event: MainEvent) {
        
    }
       
        
    
}

extension MainViewModel{
    private func loadSetting(){
        runAfter(2){
            self.isSplashPresented = true
        }
        
    }
    

    
    
    
}
