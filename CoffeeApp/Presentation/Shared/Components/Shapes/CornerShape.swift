//
//  CornerShape.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/14/23.
//

import SwiftUI

struct CornerShape: Shape {
    var radius:CGFloat
    func path(in rect: CGRect) -> Path {
        let height = rect.size.height
        let width = rect.size.width
        let path = Path { path in
            path.move(to: CGPoint(x: width, y: 0))
            path.addLine(to: CGPoint(x: width, y: height-radius)) // 1
            path.addQuadCurve(to: CGPoint(x: width-radius, y: height), control: CGPoint(x: width, y: height))
            path.addLine(to: CGPoint(x: 0, y: height))
            path.addLine(to: CGPoint(x: 0, y: radius))
            path.addQuadCurve(to: CGPoint(x: radius, y: 0), control: CGPoint(x: 0, y: 0))
        }

        return path
    }
}
