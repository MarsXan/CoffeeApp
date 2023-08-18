//
//  RoutingView.swift
//  rocket
//
//  Created by mohsen mokhtari on 6/12/23.
//

import SwiftUI

struct RoutingView<Content: View,T:ViewSpec>: View {
    
    @StateObject var router: Router<T>
    private let content: Content
    
    init(router: Router<T>, @ViewBuilder content: @escaping () -> Content) {
        _router = StateObject(wrappedValue: router)
        self.content = content()
    }
    
    
    var body: some View {
        
        
        NavigationStack(path: router.navigationPath) {
            content
                .navigationDestination(for: T.self) { spec in
                    router.view(spec: spec, route: .navigation)
                }
        }.sheet(item: router.presentingSheet) { spec in
            router.view(spec: spec, route: .sheet)
        }.fullScreenCover(item: router.presentingFullScreen) { spec in
            router.view(spec: spec, route: .fullScreenCover)
        }.modal(item: router.presentingModal) { spec in
            router.view(spec: spec, route: .modal)
        }
    }
}
