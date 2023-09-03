//
//  OnBoardingViewModel.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 9/2/23.
//

import Foundation
import Defaults

class OnBoardingViewModel{
    func onboardingDone(){
        Defaults[.isOnboardingPresented] = true
    }
}
