//
//  CoinRowView.swift
//  CryptoTracker
//
//  Created by Muhammet Akgöz on 29.01.2024.
//

import SwiftUI

struct CoinRowView: View {

    let coin: CoinModel
    let showHoldingColumn: Bool

    var body: some View {
        HStack(spacing: 0) {
            // Rank of coin
            Text("\(coin.rank)")
                .font(.caption)
                .foregroundStyle(Color.theme.secondaryText)
                .frame(minWidth: 30)

            // Coin icon
            Circle().frame(width: 30, height: 30)

            // Coin Symbol
            Text((coin.symbol ?? "").uppercased())
                .font(.headline)
                .padding(.leading, 6)
                .foregroundColor(Color.theme.accent)
            Spacer()
            
            // Holding
            if showHoldingColumn {
                VStack(alignment: .trailing) {
                    Text(coin.currentHoldingValue.asCurrencyWith2Decimals())
                        .bold()
                    Text(coin.currentHoldings!.asNumberString())
                }
                    .foregroundColor(Color.theme.accent)
            }
            
            
            VStack(alignment: .trailing) {
                Text(coin.currentPrice.asCurrencyWith6Decimals())
                    .bold()
                    .foregroundColor(Color.theme.accent)
                Text(coin.priceChangePercentage24H?.asPerfecntString() ?? "")
                    .foregroundColor((coin.priceChangePercentage24H ?? 0.0) >= 0 ? Color.theme.green : Color.theme.red)
            }
                .frame(width: UIScreen.main.bounds.width / 3.5, alignment: .trailing)
        }
            .font(.headline)
    }
}

struct CoinRowView_Preview: PreviewProvider {
    static var previews: some View {
        CoinRowView(coin: dev.coin, showHoldingColumn: true)
            .preferredColorScheme(.dark)
    }
}
