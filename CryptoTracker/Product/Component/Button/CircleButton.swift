//
//  CircleButtonView.swift
//  CryptoTracker
//
//  Created by Muhammet Akgöz on 14.12.2023.
//

import SwiftUI

struct CircleButton: View {
    
    let iconName: String
    
    var body: some View {
        Image(systemName: iconName)
            .font(.headline)
            .foregroundStyle(Color.theme.accent)
            .frame(width: 50, height: 50)
            .background{
                Circle().foregroundStyle(Color.theme.background)
            }
            .shadow(color: Color.theme.accent.opacity(0.25), radius: 10, x: 0, y: 0)
            .padding()

    }
}


#Preview {
    CircleButton(iconName: "heart.fill")
        .previewLayout(.sizeThatFits)
}
