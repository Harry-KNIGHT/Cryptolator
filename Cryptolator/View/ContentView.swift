//
//  ContentView.swift
//  Cryptolator
//
//  Created by Elliot Knight on 06/08/2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var cryptoCurrencies = CryptoCurrencyApi()
    var body: some View {
       EntryAppView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(CryptoCurrencyApi())
    }
}
