//
//  ProfileView.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/15/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack{
            Color.coffeeLight
                .ignoresSafeArea()
            Text("Profile View")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
