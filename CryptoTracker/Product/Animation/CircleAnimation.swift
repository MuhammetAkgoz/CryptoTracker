//
//  CircleAnimation.swift
//  CryptoTracker
//
//  Created by Muhammet Akgöz on 14.12.2023.
//

import SwiftUI

struct CircleAnimation: View {

    @Binding var launch: Bool

    var body: some View {
        Circle()
            .stroke(lineWidth: 5.0)
            .scale(launch ? 1.0 : 0.0)
            .opacity(launch ? 0.0 : 1.0)
            .animation(Animation.easeInOut(duration: 1.0), value: launch)
            .frame(width: 100, height: 100)
    }
}

#Preview {
    CircleAnimation(launch: .constant(false))
}
