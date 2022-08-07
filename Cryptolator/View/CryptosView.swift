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
						.foregroundColor(Color("ScreenBackGround").opacity(0.16))
						.padding(.horizontal, 15)
						.frame(maxWidth: .infinity, maxHeight: 500)
					.overlay {
						CalculatorScreenBorder()
							.stroke(Color("ScreenBorder"), lineWidth: 2.0)
							.frame(maxWidth: .infinity, maxHeight: 500)
						ScrollView(.vertical, showsIndicators: false) {
							VStack(alignment: .center, spacing: 30) {
								ForEach(cryptos.cryptoCurrencies, id: \.self) { crypto in
									NavigationLink(destination: CalculatorView(crypto: crypto)) {
									HStack(spacing: 5) {

									AsyncCryptoIconView(crypto: crypto)
										//.colorMultiply(Color("AsyncImageMultiply"))
										//.colorInvert()
											.saturation(0)
											.colorMultiply(.blue)
										Spacer()
									Text(crypto.name ?? "")
										Spacer()
										Text(String(format: "%.2f", crypto.currentPrice ?? 0))
										.foregroundColor(.white)

									}
									.padding(.horizontal, 30)
								}
								}
							}.padding(.top, 50)
						}
						.mask {
							CalculatorScreenBackground()
								.frame(height: 495)
						}

					}

				}
				Image("CircleEffectlumire")
					.resizable()
					.scaledToFit()
					.frame(maxWidth: .infinity, maxHeight: 200)
					.opacity(0.70)
			}
			.navigationBarHidden(true)
			.task {
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
