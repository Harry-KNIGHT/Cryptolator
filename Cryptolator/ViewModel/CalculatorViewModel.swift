//
//  CalculatorViewModel.swift
//  Cryptolator
//
//  Created by Elliot Knight on 06/08/2022.
//

import Foundation

class CalculViewModel: ObservableObject {
	@Published public var numberEntry = [String]()
	@Published public var finalCalcul: Double = 0

	func calculPrice(_ numberEntry: String, cryptoPrice: Double) -> Double {

		let numberEntryIntoDouble = Double(numberEntry) ?? 0
		let calcul = (numberEntryIntoDouble * cryptoPrice)
		finalCalcul = calcul
		
		return calcul
	}
}
