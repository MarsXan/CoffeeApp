//
//  DependencyPropertyWrapper.swift
//  rocket
//
//  Created by mohsen mokhtari on 6/8/23.
//

import Foundation

@propertyWrapper
struct Inject<InjectableType> {
    
    var injectable: InjectableType
    
    init(_ dependencyType: InjectionType = .newInstance) {
        guard let injectable = DependencyResolver.resolve(dependencyType: dependencyType, InjectableType.self) else {
            fatalError("No dependency of type \(String(describing: InjectableType.self)) registered!")
        }
        
        self.injectable = injectable
    }
    
    var wrappedValue: InjectableType {
        get { self.injectable }
        mutating set { injectable = newValue }
    }
}
