//
//  CryptosView.swift
//  Cryptolator
//
//  Created by Elliot Knight on 07/08/2022.
//

import SwiftUI

public var backGradient = RadialGradient(gradient: Gradient(colors: [Color("RadialBackgroundBlue"), .black]), center: .center, startRadius: 350, endRadius: 450)

struct CryptosView: View {
	@ObservedObject public var cryptos = CryptoCurrencyApi()

	var body: some View {

		GeometryReader { geo in
			ZStack {

				Rectangle()
					.fill(backGradient).blur(radius: 40)
					.ignoresSafeArea(.all)
				VStack {
					ZStack(alignment: .center) {
						CalculatorScreenBackground()
							.foregroundColor(Color("ScreenBackGround").opacity(0.16))
							.padding(.horizontal, 15)
							.frame(maxWidth: geo.size.width, maxHeight: geo.size.height)
							.overlay {

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
														.font(.custom(FontManager.BlackOpsOne.regular, size: 20, relativeTo: .headline))
														.foregroundColor(Color("TextMainCryptoListColor"))
													Spacer()
													Text("$\(String(format: "%.2f", crypto.currentPrice ?? 0))")
														.font(.custom(FontManager.BlackOpsOne.regular, size: 15, relativeTo: .headline))
														.foregroundColor(Color("TextMainCryptoListColor"))

												}
												.padding(.horizontal, 30)
											}
										}
									}.padding(.vertical, 50)
								}
								.mask {
									CalculatorScreenBackground()
										.frame(maxWidth: geo.size.width, maxHeight: geo.size.height)
								}
								CalculatorScreenBorder()
									.stroke(Color("ScreenBorder"), lineWidth: 2.0)
									.frame(maxWidth: geo.size.width, maxHeight: geo.size.height)

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
	}
}

struct CryptosView_Previews: PreviewProvider {
	static var previews: some View {
		CryptosView()
			.preferredColorScheme(.dark)
			.environmentObject(CryptoCurrencyApi())
	}
}
