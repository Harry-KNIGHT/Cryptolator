//
//  CalculatorView.swift
//  Cryptolator
//
//  Created by Elliot Knight on 06/08/2022.
//

import SwiftUI

struct CalculatorView: View {
	let crypto: CryptoResponseElement
	@EnvironmentObject public var calculVM: CalculViewModel
	@State private var numberToCalcul = [String]()
	var body: some View {
		VStack {
			ZStack(alignment: .center) {

				ZStack(alignment: .top) {
					CalculatorScreenBackground()
						.padding(.horizontal, 10)
						.foregroundColor(Color("ScreenBackGround").opacity(0.16))
						.frame(width: 375, height: 235)
						.overlay {
							CalculatorScreenBorder()
								.stroke(Color("ScreenBorder"), lineWidth: 2.0)
								.padding(.horizontal, 10)
								.frame(width: 400, height: 235)

						}
					VStack(spacing: 10) {
						Text("Rentre le nombre de \(crypto.name ?? "token") \n que tu veux acheter" )

							.multilineTextAlignment(.center)
						Text("Prix actuel: $\(String(crypto.currentPrice ?? 0))")

						HStack(spacing: 0.5) {
							ForEach(Array(calculVM.numberEntry), id: \.self) { num in
								Text(String(num))
							}
						}.padding(.top, 25)
					}
					.padding(.top, 50)
				}

				.padding(.horizontal, 4)




			}
			HStack {
				ExtractedCalculButton(number: "7", numberToCalcul: $numberToCalcul)
				ExtractedCalculButton(number: "8", numberToCalcul: $numberToCalcul)
				ExtractedCalculButton(number: "9", numberToCalcul: $numberToCalcul)
			}
			HStack {
				ExtractedCalculButton(number: "4", numberToCalcul: $numberToCalcul)
				ExtractedCalculButton(number: "5", numberToCalcul: $numberToCalcul)
				ExtractedCalculButton(number: "6", numberToCalcul: $numberToCalcul)
			}


			HStack {
				ExtractedCalculButton(number: "1", numberToCalcul: $numberToCalcul)
				ExtractedCalculButton(number: "2", numberToCalcul: $numberToCalcul)
				ExtractedCalculButton(number: "3", numberToCalcul: $numberToCalcul)
			}
			HStack {
				ExtractedCalculButton(number: "0", numberToCalcul: $numberToCalcul)
				ExtractedCalculButton(number: ".", numberToCalcul: $numberToCalcul)
				ExtractedCalculButton(number: "=", numberToCalcul: $numberToCalcul)
			}

		}
		.navigationTitle(crypto.name ?? "")
		.navigationBarTitleDisplayMode(.inline)
	}
}

struct CalculatorView_Previews: PreviewProvider {
	static var previews: some View {
		CalculatorView(crypto: CryptoResponseElement(id: "bitcoin", symbol: "btc", name: "Bitcoin", image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579", currentPrice: 22.345, marketCap: 444333886615, marketCapRank: 1, fullyDilutedValuation: 48817778433, totalVolume: 20365671279, high24H: 23322, low24H: 29342, priceChange24H: 250.02, priceChangePercentage24H: 1.08715, marketCapChange24H: 4138046572, marketCapChangePercentage24H: 0.94005, circulatingSupply: 19113962.0, totalSupply: 21000000.0, maxSupply: 21000000.0, ath: 69045, athChangePercentage: -66.45323, athDate: "2021-11-10T14:24:11.849Z", atl: 67.81, atlChangePercentage: 34114.53219, atlDate: "2013-07-06T00:00:00.000Z", roi: nil, lastUpdated: "2022-08-06T13:12:37.539Z", priceChangePercentage24HInCurrency: 1.087154395344194))
			.preferredColorScheme(.dark)
			.environmentObject(CalculViewModel())
	}
}

struct ExtractedCalculButton: View {
	var number: String
	@Binding var numberToCalcul: [String]
	@EnvironmentObject public var calculVM: CalculViewModel

	var body: some View {
		Button(action: {
			calculVM.numberEntry += number
		}, label: {
			ZStack {
				Text(String(number))
					.font(.title.bold())
					.foregroundColor(.white)
				CalculatorButton()
					.stroke(LinearGradient(colors: [Color("TopRadialBorderButton"), Color("BottomRadialBorderButton")], startPoint: .topTrailing, endPoint: .topLeading), lineWidth: 3)
					.frame(width: 80, height: 80)
					.background(Color("BackgroundButton").opacity(0.2))
					.mask {
						CalculatorButton()
					}
			}
		})
		.buttonStyle(.borderless)
		.padding()
	}
}
