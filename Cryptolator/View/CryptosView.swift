//
//  CryptosView.swift
//  Cryptolator
//
//  Created by Elliot Knight on 07/08/2022.
//

import SwiftUI

struct CryptosView: View {
	@ObservedObject public var cryptos = CryptoCurrencyApi()

    var body: some View {
		VStack {
			ZStack(alignment: .center) {
			CalculatorScreenBackground()
					.foregroundColor(Color("ScreenBackGround").opacity(1))
					.padding(.horizontal, 15)
					.frame(maxWidth: .infinity, maxHeight: 500)
				.overlay {
					CalculatorScreenBorder()
						.stroke(Color("ScreenBorder"), lineWidth: 2.0)
						.frame(maxWidth: .infinity, maxHeight: 500)
					ScrollView(.vertical, showsIndicators: false) {
						VStack(alignment: .center, spacing: 30) {
							ForEach(cryptos.cryptoCurrencies, id: \.self) { crypto in
								HStack {

								AsyncCryptoIconView(crypto: crypto)
									//.colorMultiply(Color("AsyncImageMultiply"))
										.colorInvert()
										
									Spacer()
								Text(crypto.name ?? "")
									Spacer()
									Text(String(format: "%.2f", crypto.currentPrice ?? 0))
									.foregroundColor(.white)

								}.padding(.horizontal, 30)
							}
						}
					}.frame(width: .infinity, height: 420)
				}

			}
			Spacer()
			Image("lightEffect")

		}.task {
			Task {
			try await cryptos.fetchCrypto()
			}
		}
    }
}

struct CryptosView_Previews: PreviewProvider {
    static var previews: some View {
		CryptosView()
			.preferredColorScheme(.dark)
			.environmentObject(CryptoCurrencyApi())
    }
}
