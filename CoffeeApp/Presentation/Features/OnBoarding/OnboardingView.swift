//
//  OnboardingView.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 9/2/23.
//

import SwiftUI

struct OnboardingView: View {
    @EnvironmentObject var router:MainRouter
    @State private var currentIndex = 0
    private var viewModel = OnBoardingViewModel()
    
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.coffeeMud2, .coffeeBrown]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack{
                TabView(selection: $currentIndex){
                    ForEach(0..<3){ index in
                        onboardingCardView(index)
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .padding(.top,20)
               
                
                
                Spacer()
                
                onboardingBottomView()
                
            }
        }
            
        
    }
    
    @ViewBuilder
    private func onboardingCardView(_ index: Int) -> some View{
        VStack{
            Image(onboardingList[index].image)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
            
            Text(onboardingList[index].title)
                .font(.header1)
                .foregroundColor(.coffeeLight)
            
            Text(onboardingList[index].description)
                .font(.cBody)
                .foregroundColor(.coffeeLight)
                .multilineTextAlignment(.center)
                .padding()
            
            
            
        
        }
    }
    
    @ViewBuilder
    private func onboardingBottomView() -> some View{
        HStack{
            ForEach(0..<3){ index in
                Capsule()
                    .fill(Color.coffeeBrown)
                    .frame(width: index == currentIndex ? 40 : 15, height: 15)
                    .animation(.easeInOut, value: currentIndex)
                    .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 5)
            }
            
            Spacer()
            
            // start button
            Button(action: {
                viewModel.onboardingDone()
                router.removeAllAndNavigateTo(.dashbooard)
            }, label: {
                Text("Start")
                    .font(.header3)
                    .foregroundColor(.coffeeLight)
                    .frame(width: 100, height: 50)
                    .background(Color.coffeeBrown)
                    .clipShape(Capsule())
                    .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 5)
            })
        
        }.padding()
    }


}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
