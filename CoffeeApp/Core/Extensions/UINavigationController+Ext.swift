//
//  UINavigationController+Ext.swift
//  rocket
//
//  Created by mohsen mokhtari on 7/26/23.
//

import SwiftUI

class AppState {
  static let shared = AppState()

  var swipeEnabled = false
}

extension UINavigationController: UIGestureRecognizerDelegate {

    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return AppState.shared.swipeEnabled ?
                 viewControllers.count > 1 : false
    }
}
