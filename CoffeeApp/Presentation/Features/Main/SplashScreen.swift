//
//  SplashScreen.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 9/2/23.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        ZStack{
            Color.coffeeLight
                .ignoresSafeArea()
            
            Image(Images.logo)
                .resizable()
                .renderingMode(.template)
                .foregroundColor(.coffeeDark)
                .scaledToFit()
                .frame(width: 250, height: 250)
        }

    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
