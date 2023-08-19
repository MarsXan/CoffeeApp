//
//  ErrorView.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/16/23.
//

import SwiftUI

struct ErrorView: View {
    var error: ErrorModel?
    var retry: (() -> Void)? = nil
    
    var body: some View {
        VStack(spacing:8){
            Image(Images.error)
                .resizable()
                .aspectRatio(contentMode: .fit)
                
            Text("Oops!")
                .font(.cTitle)
                .foregroundColor(.black)
                
            
            
            Text(error?.message ?? "Something went wrong!")
                .font(.cBody)
                .foregroundColor(.black)
                .padding()
            
            Button(action: {
                retry?()
            }, label: {
                Text("Retry")
                    .font(.cBodyBold)
                    .foregroundColor(.white)
                    .padding(.vertical,8)
                    .padding(.horizontal)
                    .background(Color.black)
                    .cornerRadius(10)
            })
            
        
            
            
        }.padding()
        
        
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView()
    }
}
