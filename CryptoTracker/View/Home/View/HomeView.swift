//
//  HomeView.swift
//  CryptoTracker
//
//  Created by Muhammet Akgöz on 14.12.2023.
//

import SwiftUI

struct HomeView: View {

    @State private var isShow = false

    var body: some View {
        VStack {
            // Header
            AppBar(isShow: $isShow)

            // Content
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
        }.background(Color.theme.background)
    }
}

struct AppBar: View {

    @Binding var isShow: Bool

    var body: some View {
        HStack {
            CircleButton(iconName: isShow ? "plus" : "info")
                .animation(.none, value: isShow)
                .background {
                CircleAnimation(launch: $isShow)
            }
            Spacer()
            Text(isShow ? "Portfolio" : "Live Prices")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundStyle(Color.theme.accent)
                .animation(.none, value: isShow)
            Spacer()
            CircleButton(iconName: "chevron.right")
                .rotationEffect(.degrees(isShow ? 180 : 0))
                .onTapGesture {
                withAnimation(.spring()) {
                    isShow.toggle()
                }
            }
        }.padding(.horizontal)
    }
}


#Preview {
    NavigationView {
        HomeView()
    }.toolbar(.hidden)
}
