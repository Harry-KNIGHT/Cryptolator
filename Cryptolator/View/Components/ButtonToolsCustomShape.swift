//
//  ButtonToolsCustomShape.swift
//  Cryptolator
//
//  Created by Nyl Neuville on 07/08/2022.
//

import Foundation
import SwiftUI

struct ButtonToolsCustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.00601*width, y: 0.9401*height))
        path.addLine(to: CGPoint(x: 0.04251*width, y: 0.05*height))
        path.addLine(to: CGPoint(x: 0.84324*width, y: 0.05*height))
        path.addLine(to: CGPoint(x: 0.80245*width, y: 0.9401*height))
        path.addLine(to: CGPoint(x: 0.00601*width, y: 0.9401*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.81963*width, y: 0.9401*height))
        path.addLine(to: CGPoint(x: 0.86041*width, y: 0.05*height))
        path.addLine(to: CGPoint(x: 0.88188*width, y: 0.05*height))
        path.addLine(to: CGPoint(x: 0.84324*width, y: 0.9401*height))
        path.addLine(to: CGPoint(x: 0.81963*width, y: 0.9401*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.86041*width, y: 0.9401*height))
        path.addLine(to: CGPoint(x: 0.89905*width, y: 0.05*height))
        path.addLine(to: CGPoint(x: 0.91838*width, y: 0.05*height))
        path.addLine(to: CGPoint(x: 0.88188*width, y: 0.9401*height))
        path.addLine(to: CGPoint(x: 0.86041*width, y: 0.9401*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.89905*width, y: 0.9401*height))
        path.addLine(to: CGPoint(x: 0.93555*width, y: 0.05*height))
        path.addLine(to: CGPoint(x: 0.95487*width, y: 0.05*height))
        path.addLine(to: CGPoint(x: 0.91838*width, y: 0.9401*height))
        path.addLine(to: CGPoint(x: 0.89905*width, y: 0.9401*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.93555*width, y: 0.9401*height))
        path.addLine(to: CGPoint(x: 0.97633*width, y: 0.05*height))
        path.addLine(to: CGPoint(x: 0.99351*width, y: 0.05*height))
        path.addLine(to: CGPoint(x: 0.95487*width, y: 0.9401*height))
        path.addLine(to: CGPoint(x: 0.93555*width, y: 0.9401*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.00601*width, y: 0.9401*height))
        path.addLine(to: CGPoint(x: 0.04251*width, y: 0.05*height))
        path.addLine(to: CGPoint(x: 0.84324*width, y: 0.05*height))
        path.addLine(to: CGPoint(x: 0.80245*width, y: 0.9401*height))
        path.addLine(to: CGPoint(x: 0.00601*width, y: 0.9401*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.81963*width, y: 0.9401*height))
        path.addLine(to: CGPoint(x: 0.86041*width, y: 0.05*height))
        path.addLine(to: CGPoint(x: 0.88188*width, y: 0.05*height))
        path.addLine(to: CGPoint(x: 0.84324*width, y: 0.9401*height))
        path.addLine(to: CGPoint(x: 0.81963*width, y: 0.9401*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.86041*width, y: 0.9401*height))
        path.addLine(to: CGPoint(x: 0.89905*width, y: 0.05*height))
        path.addLine(to: CGPoint(x: 0.91838*width, y: 0.05*height))
        path.addLine(to: CGPoint(x: 0.88188*width, y: 0.9401*height))
        path.addLine(to: CGPoint(x: 0.86041*width, y: 0.9401*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.89905*width, y: 0.9401*height))
        path.addLine(to: CGPoint(x: 0.93555*width, y: 0.05*height))
        path.addLine(to: CGPoint(x: 0.95487*width, y: 0.05*height))
        path.addLine(to: CGPoint(x: 0.91838*width, y: 0.9401*height))
        path.addLine(to: CGPoint(x: 0.89905*width, y: 0.9401*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.93555*width, y: 0.9401*height))
        path.addLine(to: CGPoint(x: 0.97633*width, y: 0.05*height))
        path.addLine(to: CGPoint(x: 0.99351*width, y: 0.05*height))
        path.addLine(to: CGPoint(x: 0.95487*width, y: 0.9401*height))
        path.addLine(to: CGPoint(x: 0.93555*width, y: 0.9401*height))
        path.closeSubpath()
        return path
    }
}
