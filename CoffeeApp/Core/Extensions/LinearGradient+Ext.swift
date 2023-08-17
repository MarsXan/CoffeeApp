//
//  LinearGradient+Ext.swift
//  rocket
//
//  Created by mohsen mokhtari on 8/8/23.
//

import SwiftUI

extension LinearGradient {
    init(_ colors: Color...) {
        self.init(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}
