//
//  DotProgressView.swift
//  rocket
//
//  Created by mohsen mokhtari on 8/8/23.
//

import SwiftUI

struct DotProgressView: View {
    var color: Color = .gray
    
    @State private var y: CGFloat = 0
    
    var body: some View {
        HStack{
            Dot(y: y,color: color)
                .animation(.easeInOut(duration: 0.5).repeatForever().delay(0), value: y)
            Dot(y: y,color: color)
                .animation(.easeInOut(duration: 0.5).repeatForever().delay(0.2), value: y)
            Dot(y: y,color: color)
                .animation(.easeInOut(duration: 0.5).repeatForever().delay(0.4), value: y)
        }
        .onAppear{y = -10}
    }
}

struct Dot: View {
    var y : CGFloat
    var color: Color = .gray
    var body: some View {
        Circle()
            .frame(width: 8, height: 8, alignment: .center)
            .opacity(y == 0 ? 0.1 : 1)
            .offset(y: y)
            .foregroundColor(color)
    }
}

struct DotProgressView_Previews: PreviewProvider {
    static var previews: some View {
        DotProgressView()
    }
}
