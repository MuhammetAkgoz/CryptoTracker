//
//  Color+Extension.swift
//  CryptoTracker
//
//  Created by Muhammet Akgöz on 14.12.2023.
//

import Foundation
import SwiftUI


extension Color {
    static let theme = AppColors()
    
}

struct AppColors {
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let red = Color("RedColor")
    let green = Color("GreenColor")
    let secondaryText = Color("SecondaryTextColor")
}
