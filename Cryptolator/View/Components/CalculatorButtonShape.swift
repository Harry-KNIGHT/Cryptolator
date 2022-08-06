//
//  CalculatorButtonShape.swift
//  Cryptolator
//
//  Created by Elliot Knight on 06/08/2022.
//

import SwiftUI

struct CalculatorButton: Shape {
	func path(in rect: CGRect) -> Path {
		var path = Path()
		let width = rect.size.width
		let height = rect.size.height
		path.move(to: CGPoint(x: 0.1467*width, y: 0.03806*height))
		path.addLine(to: CGPoint(x: 0.0242*width, y: 0.26323*height))
		path.addCurve(to: CGPoint(x: 0.01926*width, y: 0.28318*height), control1: CGPoint(x: 0.02098*width, y: 0.26915*height), control2: CGPoint(x: 0.01926*width, y: 0.27609*height))
		path.addLine(to: CGPoint(x: 0.01926*width, y: 0.93648*height))
		path.addCurve(to: CGPoint(x: 0.04897*width, y: 0.97263*height), control1: CGPoint(x: 0.01926*width, y: 0.95645*height), control2: CGPoint(x: 0.03256*width, y: 0.97263*height))
		path.addLine(to: CGPoint(x: 0.83146*width, y: 0.97263*height))
		path.addCurve(to: CGPoint(x: 0.85661*width, y: 0.95571*height), control1: CGPoint(x: 0.84168*width, y: 0.97263*height), control2: CGPoint(x: 0.85118*width, y: 0.96624*height))
		path.addLine(to: CGPoint(x: 0.97834*width, y: 0.71993*height))
		path.addCurve(to: CGPoint(x: 0.98289*width, y: 0.7007*height), control1: CGPoint(x: 0.98131*width, y: 0.71417*height), control2: CGPoint(x: 0.98289*width, y: 0.70751*height))
		path.addLine(to: CGPoint(x: 0.98289*width, y: 0.05801*height))
		path.addCurve(to: CGPoint(x: 0.95318*width, y: 0.02187*height), control1: CGPoint(x: 0.98289*width, y: 0.03805*height), control2: CGPoint(x: 0.96959*width, y: 0.02187*height))
		path.addLine(to: CGPoint(x: 0.17147*width, y: 0.02187*height))
		path.addCurve(to: CGPoint(x: 0.1467*width, y: 0.03806*height), control1: CGPoint(x: 0.1615*width, y: 0.02187*height), control2: CGPoint(x: 0.1522*width, y: 0.02795*height))
		path.closeSubpath()
		return path
	}
}
