//
//  InjectionResolver.swift
//  rocket
//
//  Created by mohsen mokhtari on 6/8/23.
//

import Foundation

final class DependencyResolver {
    
    private static var cache: [String: Any] = [:]
    private static var generators: [String: () -> Any] = [:]
    
    static func register<InjectableType>(type: InjectableType.Type, as injectableType: InjectionType = .automatic, _ factory: @autoclosure @escaping () -> InjectableType) {
        generators[String(describing: type.self)] = factory
        
        if injectableType == .singleton {
            cache[String(describing: type.self)] = factory()
        }
    }
    
    static func resolve<InjectableType>(dependencyType: InjectionType = .automatic, _ type: InjectableType.Type) -> InjectableType? {
        let key = String(describing: type.self)
        switch dependencyType {
        case .singleton:
            if let cachedInjectable = cache[key] as? InjectableType {
                return cachedInjectable
            } else {
                fatalError("\(String(describing: type.self)) is not registeres as singleton")
            }
            
        case .automatic:
            if let cachedInjectable = cache[key] as? InjectableType {
                return cachedInjectable
            }
            fallthrough
            
        case .newInstance:
            if let injectable = generators[key]?() as? InjectableType {
                cache[String(describing: type.self)] = injectable
                return injectable
            } else {
                return nil
            }
        }
    }
}
