//
//  Router.swift
//  rocket
//
//  Created by mohsen mokhtari on 6/12/23.
//

import SwiftUI

class Router<T:ViewSpec>: ObservableObject {
    
    enum Route {
        case navigation
        case sheet
        case fullScreenCover
        case modal
    }
    
    struct State {
        var navigationPath: [T] = []
        var presentingSheet: T? = nil
        var presentingFullScreen: T? = nil
        var presentingModal: T? = nil
        var isPresented: Binding<T?>
        
        var isPresenting: Bool {
            presentingSheet != nil || presentingFullScreen != nil || presentingModal != nil
        }
    }
    
    @Published private(set) var state: State
    
    init(isPresented: Binding<T?>) {
        state = State(isPresented: isPresented)
    }
    
    func view(spec: T, route: Route) -> AnyView {
        AnyView(EmptyView())
    }
}

extension Router {
    
    func navigateTo(_ viewSpec: T) {
        state.navigationPath.append(viewSpec)
    }
    
    func removeAllAndNavigateTo(_ viewSpec: T) {
        state.navigationPath.removeAll()
        state.navigationPath.append(viewSpec)
    }
    
    
    
    func navigateBack() {
        state.navigationPath.removeLast()
    }
    
    func replaceNavigationStack(path: [T]) {
        state.navigationPath = path
    }
    
    func presentSheet(_ viewSpec: T) {
        state.presentingSheet = viewSpec
    }
    
    func presentFullScreen(_ viewSpec: T) {
        state.presentingFullScreen = viewSpec
    }
    
    func presentModal(_ viewSpec: T) {
        state.presentingModal = viewSpec
    }
    
    func dismiss() {
        if state.presentingSheet != nil {
            state.presentingSheet = nil
        } else if state.presentingFullScreen != nil {
            state.presentingFullScreen = nil
        } else if state.presentingModal != nil {
            state.presentingModal = nil
        } else if navigationPath.count > 1 {
            state.navigationPath.removeLast()
        } else {
            state.isPresented.wrappedValue = nil
        }
    }
}

extension Router  {
    
    var navigationPath: Binding<[T]> {
        binding(keyPath: \.navigationPath)
    }
    
    var presentingSheet: Binding<T?> {
        binding(keyPath: \.presentingSheet)
    }
    
    var presentingFullScreen: Binding<T?> {
        binding(keyPath: \.presentingFullScreen)
    }
    
    var presentingModal: Binding<T?> {
        binding(keyPath: \.presentingModal)
    }
    
    var isPresented: Binding<T?> {
        state.isPresented
    }
}

private extension Router {
    
    func binding<T>(keyPath: WritableKeyPath<State, T>) -> Binding<T> {
        Binding(
            get: { self.state[keyPath: keyPath] },
            set: { self.state[keyPath: keyPath] = $0 }
        )
    }
}

extension Router where T:Hashable{
    
}
