//
//  Fonts.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/14/23.
//

let sansBold = "WorkSans-Bold"
let sansRegular = "WorkSans-Regular"
let sansMedium = "WorkSans-Medium"
let sansSemiBold = "WorkSans-SemiBold"


import SwiftUI

extension Font {
    static var header1: Font {
        .custom(sansBold, size: 26)
    }
    static var header2: Font {
        .custom(sansBold, size: 24)
    }
    static var header3: Font {
        .custom(sansBold, size: 23)
    }
    static var header4: Font {
        .custom(sansBold, size: 20)
    }
    
    static var cTitle: Font {
        .custom(sansBold, size: 18)
    }
    
    static var cBody: Font {
        .custom(sansRegular, size: 16)
    }
    static var cBodyBold: Font {
        .custom(sansBold, size: 16)
    }
    static var cBodySemiBold: Font {
        .custom(sansSemiBold, size: 16)
    }
    
    static var cCaption: Font {
        .custom(sansRegular, size: 14)
    }
    static var cCaptionSemiBold: Font {
        .custom(sansSemiBold, size: 14)
    }
}
