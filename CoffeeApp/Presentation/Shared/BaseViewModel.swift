//
//  BaseViewModel.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/15/23.
//

import Foundation
import Combine


class BaseViewModel<T>: ObservableObject {

    @Published var showLoading: Bool = false
    @Published var showError: Bool = false
    @Published var errorMessage: String = ""
    @Published var isLoading: Bool = false
    var cancellables = Set<AnyCancellable>()
    
    deinit {
        cancellables.forEach { $0.cancel() }
    }

    func onEvent(_ event: T) {
    }

    func setError(_ error: ErrorModel) async {
        await MainActor.run(body: {
            self.isLoading = false
            self.errorMessage = error.message ?? ""
            self.showError = true
        })
    }

    func setLoading(_ isLoading: Bool) async {
        await MainActor.run(body: {
            self.isLoading = isLoading
        })
    }
    
    func runUI(_ block:@Sendable () -> Void) async {
        await MainActor.run(body: block)
    }
    
    
    


}
