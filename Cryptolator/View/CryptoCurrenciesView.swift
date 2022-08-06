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
		NavigationView {
			ScrollView {

				ForEach(cryptos.cryptoCurrencies, id: \.self) { crypto in
					HStack {
						VStack {
					Text(crypto.name ?? "")
						}
					}
				}
			}.task {
				Task {
					try await cryptos.fetchCrypto()
				}
			}
			.navigationTitle("Cryptos")
		}
	}
}

struct CryptoCurrenciesView_Previews: PreviewProvider {
	static var previews: some View {
		CryptoCurrenciesView()
			.environmentObject(CryptoCurrencyApi())
	}
}
