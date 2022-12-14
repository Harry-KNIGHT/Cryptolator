//
//  EntryAppView.swift
//  Cryptolator
//
//  Created by Nyl Neuville on 07/08/2022.
//

import SwiftUI
import RiveRuntime

struct EntryAppView: View {
	@State private var isActive = false
	
	var body: some View {
		NavigationView {
			ZStack {
				Color.black.ignoresSafeArea()
				VStack(spacing: 20) {
					RiveViewModel(fileName: "hologrampresentation").view()
						.scaledToFill()
						.clipped()

					CalculatorButton()
						.frame(width: 339, height: 72)
						.foregroundColor(Color("BackgroundButton"))
						.opacity(0.2)
						.overlay {

							NavigationLink(destination: CryptosView(), isActive: $isActive) {
								Button(action: {
									isActive.toggle()
								}, label: {
									ZStack {
										CalculatorButton()
											.stroke(LinearGradient(colors: [Color("TopRadialBorderButton"), Color("BottomRadialBorderButton")], startPoint: .topTrailing, endPoint: .topLeading),lineWidth: 2)
										Label("Access Calculator", image: "headstylebutton")
											.font(.custom(FontManager.BlackOpsOne.regular, size: 23, relativeTo: .headline))
											.foregroundColor(Color("TopRadialBorderButton"))

										LinearGradient(colors: [Color("TopRadialBorderButton"), Color("BottomRadialBorderButton")], startPoint: .topTrailing, endPoint: .topLeading)
											.mask {
												ButtonToolsCustomShape()
													.frame(width: 226, height: 20)
													.padding(.bottom, 70)
													.padding(.leading, 70)
											}
									}
								})
							}

						}
				}
			}
		}.navigationBarHidden(true)
	}
}

struct EntryAppView_Previews: PreviewProvider {
	static var previews: some View {
		EntryAppView()
	}
}
