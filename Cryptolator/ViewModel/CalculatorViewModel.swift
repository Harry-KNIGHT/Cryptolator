//
//  CalculatorViewModel.swift
//  Cryptolator
//
//  Created by Elliot Knight on 06/08/2022.
//

import Foundation

class CalculViewModel: ObservableObject {
	@Published public var numberEntry: String = ""

	func calculPrice(_ numberEntry: String, cryptoPrice: CryptoResponseElement) -> Double {

		let numberEntryIntoDouble = Double(numberEntry) ?? 0
		let calcul = numberEntryIntoDouble * (cryptoPrice.currentPrice ?? 0)

		return calcul.rounded()
	}
}
