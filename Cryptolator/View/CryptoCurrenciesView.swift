//
//  CryptoCurrenciesView.swift
//  Cryptolator
//
//  Created by Elliot Knight on 06/08/2022.
//

import SwiftUI

struct CryptoCurrenciesView: View {
	@EnvironmentObject public var cryptos: CryptoCurrencyApi
	var body: some View {
			ScrollView {
				LazyVStack(alignment: .leading) {
					ForEach(cryptos.cryptoCurrencies, id: \.self) { crypto in
						NavigationLink(destination: CalculatorView(crypto: crypto)) {
							HStack {
								AsyncCryptoIconView(crypto: crypto)
								VStack(alignment: .leading, spacing: 5) {
									Text(crypto.name ?? "")
										.font(.headline)
									Text(String(crypto.currentPrice ?? 0))

								}.foregroundColor(.primary)
								Spacer()

							}
							.padding(8)
							.background(.regularMaterial)
							.cornerRadius(10)
						}
					}
				}

				.padding()
			}.task {
				Task {
					try await cryptos.fetchCrypto()
				}
			}
			.navigationBarTitle("Cryptos")
            .navigationBarBackButtonHidden(true)
	}
}

struct CryptoCurrenciesView_Previews: PreviewProvider {
	static var previews: some View {
        NavigationView {
		CryptoCurrenciesView()
			.environmentObject(CryptoCurrencyApi())
        }
	}
}
