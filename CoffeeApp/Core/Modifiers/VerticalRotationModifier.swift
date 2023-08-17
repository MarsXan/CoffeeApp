//
//  VerticalRotationModifier.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/14/23.
//

import SwiftUI

struct VerticalRotationModifier: ViewModifier {
    @State private var contentSize = CGSize.zero
    let rotation: VerticalRotationType

    func body(content: Content) -> some View {
        content
            .fixedSize()
            .overlay(GeometryReader { proxy in
                Color.clear.preference(key: ContentSizePreferenceKey.self, value: proxy.size)
            })
            .onPreferenceChange(ContentSizePreferenceKey.self, perform: { newSize in
                contentSize = newSize
            })
            .rotationEffect(rotation.asAngle)
            .frame(width: contentSize.height, height: contentSize.width)
    }

    enum VerticalRotationType {
        case clockwise
        case anticlockwise
        
        var asAngle: Angle {
            switch(self) {
            case .clockwise:
                return .degrees(90)
            case .anticlockwise:
                return .degrees(-90)
            }
        }
    }
    
    private struct ContentSizePreferenceKey: PreferenceKey {
        static var defaultValue: CGSize = .zero

        static func reduce(value: inout CGSize, nextValue: () -> CGSize) {
            value = nextValue()
        }
    }
}
