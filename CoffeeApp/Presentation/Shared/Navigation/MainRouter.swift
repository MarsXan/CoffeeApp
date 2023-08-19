//
//  MainRouter.swift
//  rocket
//
//  Created by mohsen mokhtari on 6/12/23.
//

import SwiftUI

class MainRouter: Router<MainViewSpec> {
   
    func presentHome() {
        navigateTo(.home)
    }
    func presentDetailView(product:Product,animation: Namespace.ID){
        navigateTo(.productDetail(product, animation))
    }
    
    override func view(spec: MainViewSpec, route: Route) -> AnyView {
        AnyView(buildView(spec: spec, route: route))
    }
}

private extension MainRouter {
    
    @ViewBuilder
    func buildView(spec: MainViewSpec, route: Route) -> some View {
        switch spec {
        case .home:
            HomeView()
                .environmentObject(router(route: route))
        case .productDetail(let product, let animation):
            FavoriteView()
                .environmentObject(router(route: route))
        }
    }
            
    func router(route: Route) -> MainRouter {
        switch route {
        case .navigation:
            return self
        case .sheet:
            return MainRouter(isPresented: presentingSheet)
        case .fullScreenCover:
            return MainRouter(isPresented: presentingFullScreen)
        case .modal:
            return self
        }
    }
}
