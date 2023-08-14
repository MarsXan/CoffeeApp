//
//  CurvedShape.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/14/23.
//

import SwiftUI

struct CurvedShape: Shape {
    var height:CGFloat
    var curveHeight:CGFloat = 80
    func path(in rect: CGRect) -> Path {

        let width = rect.size.width
        let targetPoint:CGFloat = 15
        let path = Path { path in
            path.move(to: CGPoint(x: 0, y: targetPoint))
            
            path.addCurve(to: CGPoint(x: width, y: targetPoint), control1: CGPoint(x:width/2, y: -curveHeight), control2: CGPoint(x: width, y:targetPoint))
            path.addLine(to: CGPoint(x: width, y: height))
            path.addLine(to: CGPoint(x: 0, y: height))
            
            
            
            
        }

        return path
    }
}
