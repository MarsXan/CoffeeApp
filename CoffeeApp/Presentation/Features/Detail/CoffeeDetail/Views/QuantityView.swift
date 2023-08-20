//
//  QuantityView.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/19/23.
//

import SwiftUI

struct QuantityView: View {
    var icon:String = Icons.milk
    var text = "Milk"
    @State private var temperatureValue: CGFloat = 0.0
    @State private var angleValue: CGFloat = 0
    private let movableCircleRadius = 20.0
    private let gradient = AngularGradient(
        gradient: Gradient(colors: [Color.coffeeMud, Color.coffeeRed, Color.coffeeMud]),
        center: .center,
        startAngle: .degrees(60),
        endAngle: .degrees(120))
    
    
    var body: some View {
        GeometryReader{ geometry in
            let  size =  geometry.size
            ZStack {
                Circle()
                    .trim(from: 0.1, to: 0.4)
                    .stroke(gradient, style: StrokeStyle(lineWidth: 5, lineCap: .round))
                    .rotationEffect(.degrees(-180))
                    .frame(width: size.width, height: size.width )
                    .padding(.top)
                    .clipped()
                    .zIndex(0)
                    .overlay(alignment:.top){
                        Text(text)
                            .font(.cCaptionSemiBold)
                            .foregroundColor(.coffeeRed)
                            .padding(.top,movableCircleRadius * 2.5)
                    }
                    
                

                Circle()
                    .fill(Color.coffeeRed)
                    .frame(width: 40, height: 40)
                    .padding(.top,10)
                    .offset(y: -size.width/2)
                    .rotationEffect(Angle.degrees(Double(angleValue)))
                    .gesture(DragGesture(minimumDistance: 0.0)
                        .onChanged({ value in
                            change(location: value.location)
                        })
                        .onEnded({value in
                            withAnimation(.easeInOut){
                                if angleValue > 306 && angleValue < 330 {
                                    angleValue = 306
                                }else if angleValue > 330 && angleValue <= 360 {
                                    angleValue = 360
                                } else if angleValue >= 0 && angleValue < 25 {
                                    angleValue = 0
                                }
                                else{
                                    angleValue = 54
                                }
                            }
                                
                        })
                             
                     
                            
                                
                    )
                    .zIndex(2)
                    .overlay{
                        Image(icon)
                            .resizable()
                            .renderingMode(.template)
                            .rotationEffect(Angle.degrees(Double(-angleValue)))
                            .foregroundColor(.white)
                            .frame(width: 24, height: 24)
                            .padding(.top,10)
                            .offset(y: -size.width/2)
                            .rotationEffect(Angle.degrees(Double(angleValue)))
                        
                            
                    }
                
                Circle()
                    .fill(Color.coffeeRed)
                    .frame(width: movableCircleRadius, height: movableCircleRadius)
                    .offset(y: (-size.width/2)+5)
                    .rotationEffect(Angle.degrees(306))
                    .zIndex(1)
                
                Circle()
                    .fill(Color.coffeeRed)
                    .frame(width: movableCircleRadius, height: movableCircleRadius)
                    .offset(y: (-size.width/2)+5)
                    .rotationEffect(Angle.degrees(54))
                    .zIndex(1)
                
                Circle()
                    .fill(Color.coffeeRed)
                    .frame(width: movableCircleRadius, height: movableCircleRadius)
                    .offset(y: (-size.width/2)+5)
                    .rotationEffect(Angle.degrees(0))
                    .padding(.top,5)
                    .zIndex(1)

                    
            }
        }
        
            
            
    }
    
    private func change(location: CGPoint) {
        let vector = CGVector(dx: location.x, dy: location.y)
        let angle = atan2(vector.dy - (movableCircleRadius) , vector.dx - (movableCircleRadius)) + .pi/2.0
        let fixedAngle = angle < 0.0 ? angle + 2.0 * .pi : angle
        let range = fixedAngle * 180 / .pi
        if range >= 306 && range <= 360 || range >= 0 && range <= 54 {
            angleValue = fixedAngle * 180 / .pi
        }
    }
}

struct QuantityViewView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityView()
    }
}

