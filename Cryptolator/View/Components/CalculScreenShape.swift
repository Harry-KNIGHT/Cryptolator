//
//  CalculScreenShape.swift
//  Cryptolator
//
//  Created by Elliot Knight on 06/08/2022.
//

import SwiftUI

struct CalculatorScreenBorder: Shape {
	func path(in rect: CGRect) -> Path {
		var path = Path()
		let width = rect.size.width
		let height = rect.size.height
		path.move(to: CGPoint(x: 0.45038*width, y: 0.06598*height))
		path.addCurve(to: CGPoint(x: 0.29377*width, y: 0.05376*height), control1: CGPoint(x: 0.45038*width, y: 0.06598*height), control2: CGPoint(x: 0.3548*width, y: 0.06232*height))
		path.addCurve(to: CGPoint(x: 0.0896*width, y: 0.00837*height), control1: CGPoint(x: 0.21366*width, y: 0.04253*height), control2: CGPoint(x: 0.0896*width, y: 0.00837*height))
		path.addLine(to: CGPoint(x: 0.03409*width, y: 0.09043*height))
		path.addLine(to: CGPoint(x: 0.03409*width, y: 0.41168*height))
		path.move(to: CGPoint(x: 0.38992*width, y: 0.08344*height))
		path.addCurve(to: CGPoint(x: 0.45038*width, y: 0.08344*height), control1: CGPoint(x: 0.41802*width, y: 0.08602*height), control2: CGPoint(x: 0.45038*width, y: 0.08344*height))
		path.addLine(to: CGPoint(x: 0.46326*width, y: 0.05551*height))
		path.addLine(to: CGPoint(x: 0.48209*width, y: 0.05551*height))
		path.move(to: CGPoint(x: 0.51579*width, y: 0.05551*height))
		path.addLine(to: CGPoint(x: 0.53661*width, y: 0.05551*height))
		path.addLine(to: CGPoint(x: 0.54652*width, y: 0.08519*height))
		path.addLine(to: CGPoint(x: 0.60995*width, y: 0.08344*height))
		path.move(to: CGPoint(x: 0.54652*width, y: 0.06598*height))
		path.addCurve(to: CGPoint(x: 0.72988*width, y: 0.05027*height), control1: CGPoint(x: 0.54652*width, y: 0.06598*height), control2: CGPoint(x: 0.65848*width, y: 0.06157*height))
		path.addCurve(to: CGPoint(x: 0.91126*width, y: 0.00837*height), control1: CGPoint(x: 0.80104*width, y: 0.03901*height), control2: CGPoint(x: 0.91126*width, y: 0.00837*height))
		path.addLine(to: CGPoint(x: 0.96776*width, y: 0.08519*height))
		path.addLine(to: CGPoint(x: 0.96776*width, y: 0.41168*height))
		path.move(to: CGPoint(x: 0.96776*width, y: 0.58976*height))
		path.addLine(to: CGPoint(x: 0.96776*width, y: 0.91276*height))
		path.addLine(to: CGPoint(x: 0.91225*width, y: 0.99307*height))
		path.addCurve(to: CGPoint(x: 0.71006*width, y: 0.95117*height), control1: CGPoint(x: 0.91225*width, y: 0.99307*height), control2: CGPoint(x: 0.7893*width, y: 0.96269*height))
		path.addCurve(to: CGPoint(x: 0.54652*width, y: 0.93545*height), control1: CGPoint(x: 0.64632*width, y: 0.94189*height), control2: CGPoint(x: 0.54652*width, y: 0.93545*height))
		path.move(to: CGPoint(x: 0.45038*width, y: 0.93545*height))
		path.addCurve(to: CGPoint(x: 0.30071*width, y: 0.94767*height), control1: CGPoint(x: 0.45038*width, y: 0.93545*height), control2: CGPoint(x: 0.35905*width, y: 0.93967*height))
		path.addCurve(to: CGPoint(x: 0.09059*width, y: 0.99307*height), control1: CGPoint(x: 0.21829*width, y: 0.95898*height), control2: CGPoint(x: 0.09059*width, y: 0.99307*height))
		path.addLine(to: CGPoint(x: 0.03409*width, y: 0.9145*height))
		path.addLine(to: CGPoint(x: 0.03409*width, y: 0.58976*height))
		path.move(to: CGPoint(x: 0.97866*width, y: 0.47977*height))
		path.addLine(to: CGPoint(x: 0.99749*width, y: 0.49897*height))
		path.addLine(to: CGPoint(x: 0.99749*width, y: 0.53913*height))
		path.addLine(to: CGPoint(x: 0.97866*width, y: 0.56182*height))
		path.addLine(to: CGPoint(x: 0.95785*width, y: 0.53913*height))
		path.addLine(to: CGPoint(x: 0.95785*width, y: 0.49897*height))
		path.addLine(to: CGPoint(x: 0.97866*width, y: 0.47977*height))
		path.closeSubpath()
		path.move(to: CGPoint(x: 0.02319*width, y: 0.47104*height))
		path.addLine(to: CGPoint(x: 0.04202*width, y: 0.49024*height))
		path.addLine(to: CGPoint(x: 0.04202*width, y: 0.5304*height))
		path.addLine(to: CGPoint(x: 0.02319*width, y: 0.5531*height))
		path.addLine(to: CGPoint(x: 0.00238*width, y: 0.5304*height))
		path.addLine(to: CGPoint(x: 0.00238*width, y: 0.49024*height))
		path.addLine(to: CGPoint(x: 0.02319*width, y: 0.47104*height))
		path.closeSubpath()
		return path
	}
}
// BACKGROUND

struct CalculatorScreenBackground: Shape {
	func path(in rect: CGRect) -> Path {
		var path = Path()
		let width = rect.size.width
		let height = rect.size.height
		path.move(to: CGPoint(x: 0.27837*width, y: 0.04597*height))
		path.addCurve(to: CGPoint(x: 0.0602*width, y: 0), control1: CGPoint(x: 0.19277*width, y: 0.0346*height), control2: CGPoint(x: 0.0602*width, y: 0))
		path.addLine(to: CGPoint(x: 0.0009*width, y: 0.0831*height))
		path.addLine(to: CGPoint(x: 0.0009*width, y: 0.41551*height))
		path.addLine(to: CGPoint(x: 0.0009*width, y: 0.47739*height))
		path.addLine(to: CGPoint(x: 0.01149*width, y: 0.49154*height))
		path.addLine(to: CGPoint(x: 0.01149*width, y: 0.53044*height))
		path.addLine(to: CGPoint(x: 0.0009*width, y: 0.54104*height))
		path.addLine(to: CGPoint(x: 0.0009*width, y: 0.66658*height))
		path.addLine(to: CGPoint(x: 0.0009*width, y: 0.91765*height))
		path.addLine(to: CGPoint(x: 0.06126*width, y: 0.99722*height))
		path.addCurve(to: CGPoint(x: 0.28579*width, y: 0.95125*height), control1: CGPoint(x: 0.06126*width, y: 0.99722*height), control2: CGPoint(x: 0.19771*width, y: 0.96269*height))
		path.addCurve(to: CGPoint(x: 0.45524*width, y: 0.93887*height), control1: CGPoint(x: 0.34812*width, y: 0.94314*height), control2: CGPoint(x: 0.45524*width, y: 0.93887*height))
		path.addLine(to: CGPoint(x: 0.46053*width, y: 0.95125*height))
		path.addLine(to: CGPoint(x: 0.51666*width, y: 0.95125*height))
		path.addLine(to: CGPoint(x: 0.53679*width, y: 0.95125*height))
		path.addLine(to: CGPoint(x: 0.54102*width, y: 0.93887*height))
		path.addCurve(to: CGPoint(x: 0.72319*width, y: 0.95478*height), control1: CGPoint(x: 0.54102*width, y: 0.93887*height), control2: CGPoint(x: 0.65507*width, y: 0.94539*height))
		path.addCurve(to: CGPoint(x: 0.93924*width, y: 0.99722*height), control1: CGPoint(x: 0.80785*width, y: 0.96646*height), control2: CGPoint(x: 0.93924*width, y: 0.99722*height))
		path.addLine(to: CGPoint(x: 0.99855*width, y: 0.91589*height))
		path.addLine(to: CGPoint(x: 0.99855*width, y: 0.55165*height))
		path.addLine(to: CGPoint(x: 0.9869*width, y: 0.53751*height))
		path.addLine(to: CGPoint(x: 0.9869*width, y: 0.49684*height))
		path.addLine(to: CGPoint(x: 0.99855*width, y: 0.48447*height))
		path.addLine(to: CGPoint(x: 0.99855*width, y: 0.40844*height))
		path.addLine(to: CGPoint(x: 0.99855*width, y: 0.0778*height))
		path.addLine(to: CGPoint(x: 0.93818*width, y: 0))
		path.addCurve(to: CGPoint(x: 0.74437*width, y: 0.04243*height), control1: CGPoint(x: 0.93818*width, y: 0), control2: CGPoint(x: 0.8204*width, y: 0.03103*height))
		path.addCurve(to: CGPoint(x: 0.54102*width, y: 0.05835*height), control1: CGPoint(x: 0.66807*width, y: 0.05388*height), control2: CGPoint(x: 0.54102*width, y: 0.05835*height))
		path.addLine(to: CGPoint(x: 0.53573*width, y: 0.04774*height))
		path.addLine(to: CGPoint(x: 0.46053*width, y: 0.04774*height))
		path.addLine(to: CGPoint(x: 0.45524*width, y: 0.05835*height))
		path.addCurve(to: CGPoint(x: 0.27837*width, y: 0.04597*height), control1: CGPoint(x: 0.45524*width, y: 0.05835*height), control2: CGPoint(x: 0.34358*width, y: 0.05463*height))
		path.closeSubpath()
		return path
	}
}
