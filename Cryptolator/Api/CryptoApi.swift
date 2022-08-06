//
//  CryptoApi.swift
//  Cryptolator
//
//  Created by Elliot Knight on 06/08/2022.
//

import Foundation

class CryptoCurrencyApi: ObservableObject {
	@Published public var cryptoCurrencies = [CryptoResponseElement]()

	enum ApiError: Error {
		case urlNotFound, httpResponseOutOfBounds
	}
	func fetchCrypto() async throws -> [CryptoResponseElement] {
		let url = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=false&price_change_percentage=24h"

		guard let url = URL(string: url) else {
			throw ApiError.urlNotFound
		}

		do {
			let (data, response) = try await URLSession.shared.data(from: url)

			guard let response = response as? HTTPURLResponse, response.statusCode >= 200 && response.statusCode < 300 else {
				throw ApiError.httpResponseOutOfBounds
			}

			if let decodedResponse = try? JSONDecoder().decode([CryptoResponseElement].self, from: data) {
				DispatchQueue.main.async {
					 self.cryptoCurrencies = decodedResponse
				}
			}
		}
		return cryptoCurrencies
	}
}
