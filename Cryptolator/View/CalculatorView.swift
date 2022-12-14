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
	@State private var numberToCalcul = ""
	@State private var showResult = false
	@Environment(\.colorScheme) var colorScheme
	var body: some View {
		GeometryReader { geo in
			ZStack {
				Rectangle()
					.fill(backGradient).blur(radius: 40)
					.ignoresSafeArea(.all)
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
								Text("Combien de token \(crypto.name ?? "token") \n tu veux acheter ?" )
									.font(.custom(FontManager.BlackOpsOne.regular, size: 20, relativeTo: .title3))
									.foregroundColor(colorScheme == .dark ? .white : .white)
									.multilineTextAlignment(.center)
									.padding(.horizontal, 20)
								Text("Prix actuel: $\(String(crypto.currentPrice ?? 0))")
									.font(.custom(FontManager.BlackOpsOne.regular, size: 17, relativeTo: .body))
									.foregroundColor(colorScheme == .dark ? .white : .white)
								HStack(spacing: 0.5) {
									if !showResult {
										ForEach(Array(numberToCalcul), id: \.self) { num in
											Text(String(num))
												.font(.custom(FontManager.BlackOpsOne.regular, size: 20, relativeTo: .body))
												.foregroundColor(colorScheme == .dark ? .white : .white)
										}
									}else {
										Text("$\(String(format: "%.2f", calculVM.finalCalcul))")
											.font(.custom(FontManager.BlackOpsOne.regular, size: 20, relativeTo: .body))
											.foregroundColor(colorScheme == .dark ? .white : .white)
									}
								}.padding(.top, 25)
							}
							.padding(.top, 50)
						}
						.padding(.horizontal, 4)
					}
					Group {
						HStack {
							ExtractedCalculButton(number: "7", numberToCalcul: $numberToCalcul, showResult: $showResult)
							ExtractedCalculButton(number: "8", numberToCalcul: $numberToCalcul, showResult: $showResult)
							ExtractedCalculButton(number: "9", numberToCalcul: $numberToCalcul, showResult: $showResult)
						}

						HStack {
							ExtractedCalculButton(number: "4", numberToCalcul: $numberToCalcul, showResult: $showResult)
							ExtractedCalculButton(number: "5", numberToCalcul: $numberToCalcul, showResult: $showResult)
							ExtractedCalculButton(number: "6", numberToCalcul: $numberToCalcul, showResult: $showResult)
						}


						HStack {
							ExtractedCalculButton(number: "1", numberToCalcul: $numberToCalcul, showResult: $showResult)
							ExtractedCalculButton(number: "2", numberToCalcul: $numberToCalcul, showResult: $showResult)
							ExtractedCalculButton(number: "3", numberToCalcul: $numberToCalcul, showResult: $showResult)
						}

						HStack {
							ExtractedCalculButton(number: "0", numberToCalcul: $numberToCalcul, showResult: $showResult)
							ExtractedCalculButton(number: ".", numberToCalcul: $numberToCalcul, showResult: $showResult)

							Button(action: {
								calculVM.numberEntry.append(numberToCalcul)
								print(calculVM.numberEntry)
								showResult.toggle()

								_ = calculVM.calculPrice(numberToCalcul, cryptoPrice: crypto.currentPrice ?? 0)
								calculVM.numberEntry.removeAll()
								numberToCalcul = ""

							}, label: {
								ZStack {
									Text("=")
										.font(.title.bold())
										.foregroundColor(.white)
									CalculatorButton()
										.stroke(LinearGradient(colors: [Color.red, Color("BottomRadialBorderButton")], startPoint: .topTrailing, endPoint: .topLeading), lineWidth: 3)
										.frame(width: 80, height: 80)
										.background(Color("BackgroundButton").opacity(0.2))
										.mask {
											CalculatorButton()
										}
								}

							})	.buttonStyle(.borderless)
								.padding()
						}
					}.frame(maxWidth: geo.size.width, maxHeight: geo.size.height)
				}
			}
			.navigationTitle(crypto.name ?? "")
			.navigationBarTitleDisplayMode(.inline)
		}
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
	@Binding var numberToCalcul: String
	@EnvironmentObject public var calculVM: CalculViewModel
	@Binding public var showResult: Bool
	@Environment(\.colorScheme) var colorScheme
	var body: some View {
		Button(action: {
			self.numberToCalcul += number
			self.showResult = false
		}, label: {
			ZStack {
				Text(String(number))
					.font(.custom(FontManager.BlackOpsOne.regular, size: 30, relativeTo: .title))
					.foregroundColor(colorScheme == .dark ? .white : .white)
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
