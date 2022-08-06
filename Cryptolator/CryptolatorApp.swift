//
//  CryptolatorApp.swift
//  Cryptolator
//
//  Created by Elliot Knight on 06/08/2022.
//

import SwiftUI

@main
struct CryptolatorApp: App {
	@StateObject public var cryptoApi = CryptoCurrencyApi()
    var body: some Scene {
        WindowGroup {
            ContentView()
				.environmentObject(cryptoApi)
        }
    }
}
