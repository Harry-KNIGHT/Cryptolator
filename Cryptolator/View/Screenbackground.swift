//
//  Screenbackground.swift
//  Cryptolator
//
//  Created by Elliot Knight on 06/08/2022.
//

import SwiftUI

struct Screenbackground: View {
    var body: some View {
		VStack {
        CalculatorScreenBackground()
			.padding()
			.frame(width: 393, height: 235)

			CalculatorScreenBorder()
				.stroke()
		}

    }
}

struct Screenbackground_Previews: PreviewProvider {
    static var previews: some View {
        Screenbackground()
    }
}
