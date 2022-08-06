//
//  AsyncCryptoIconView.swift
//  Cryptolator
//
//  Created by Elliot Knight on 06/08/2022.
//

import SwiftUI

struct AsyncCryptoIconView: View {
	let crypto: CryptoResponseElement
    var body: some View {
		AsyncImage(url: URL(string: crypto.image ?? "")) { image in
			image
				.resizable()
		} placeholder: {
			ProgressView()
		}
		.frame(width: 50, height: 50)
    }
}

struct AsyncCryptoIconView_Previews: PreviewProvider {
    static var previews: some View {
		AsyncCryptoIconView(crypto: CryptoResponseElement(id: "bitcoin", symbol: "btc", name: "Bitcoin", image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579", currentPrice: 22.345, marketCap: 444333886615, marketCapRank: 1, fullyDilutedValuation: 48817778433, totalVolume: 20365671279, high24H: 23322, low24H: 29342, priceChange24H: 250.02, priceChangePercentage24H: 1.08715, marketCapChange24H: 4138046572, marketCapChangePercentage24H: 0.94005, circulatingSupply: 19113962.0, totalSupply: 21000000.0, maxSupply: 21000000.0, ath: 69045, athChangePercentage: -66.45323, athDate: "2021-11-10T14:24:11.849Z", atl: 67.81, atlChangePercentage: 34114.53219, atlDate: "2013-07-06T00:00:00.000Z", roi: nil, lastUpdated: "2022-08-06T13:12:37.539Z", priceChangePercentage24HInCurrency: 1.087154395344194))
    }
}
