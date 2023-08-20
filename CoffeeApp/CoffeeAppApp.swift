//
//  CoffeeAppApp.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/13/23.
//

import SwiftUI
import Firebase

@main
struct CoffeeAppApp: App {
    init(){
        FirebaseApp.configure()
        registerDependencies()
    
        
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
    
    func registerDependencies(){
       
        DependencyResolver.register(type: HomeApiService.self, HomeApiService())
        DependencyResolver.register(type: HomeRepository.self, HomeRepositoryImpl())
        
        DependencyResolver.register(type: DetailApiService.self, DetailApiService())
        DependencyResolver.register(type: DetailRepository.self, DetailRepositoryImpl())
        
    }
}
