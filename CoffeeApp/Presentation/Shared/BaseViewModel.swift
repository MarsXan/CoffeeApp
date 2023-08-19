//
//  BaseViewModel.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/15/23.
//

import Foundation
import Combine


class BaseViewModel<T>: ObservableObject {

    @Published var error:ErrorModel? = nil
    @Published var viewState:ViewState = .loaded
    var cancellables = Set<AnyCancellable>()
    
    deinit {
        cancellables.forEach { $0.cancel() }
    }

    func onEvent(_ event: T) {
    }

    func setError(_ error: ErrorModel) async {
        await MainActor.run(body: {
            self.viewState = .error(error)
        })
    }

    func setLoading() async {
        await MainActor.run(body: {
            self.viewState = .loading
        })
    }
    
    func runUI(_ block:@Sendable @escaping () -> Void) async {
        await MainActor.run(body: block)
    }
    
    func setState(_ state:ViewState) async{
        await MainActor.run(body: {
            viewState = state
        })
    }
    
    
    
    
    
    


}
