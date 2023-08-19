//
//  StateView.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/16/23.
//

import SwiftUI

struct StateView<Content> : View where Content:View{
    var state: ViewState
    let retry: () -> Void
    let content: ()->Content
    
    init(state: ViewState, retry: @escaping () -> Void = {}, @ViewBuilder content: @escaping () -> Content) {
        self.state = state
        self.retry = retry
        self.content = content
    }
    
    var body: some View {
        ZStack(alignment: .center){
            switch state {
            case .loading:
                DotProgressView(color:Color.coffeeRed)
            case .error(let error):
                ErrorView(error: error, retry: retry)
            case .loaded:
                content()
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        
    }

}
