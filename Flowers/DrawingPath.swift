//
//  DrawingPath.swift
//  Flowers
//
//  Created by user on 1/10/23.
//

import SwiftUI

struct DrawingPath: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.minX, y: rect.midY))
        path.addLine(to: CGPoint(x: 110, y: 0))
        path.addLine(to: CGPoint(x: 100, y: 10))
        path.addLine(to: CGPoint(x: 110, y: 20))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
        return path
    }
}

struct CurveShape: View {
    var body: some View {
        Path { path in
            //Top left
            path.move(to: CGPoint(x: 0, y: 0))
            //Left vertical bound
            path.addLine(to: CGPoint(x: 0, y: 300))
            //Curve
            path.addCurve(to: CGPoint(x: 430, y: 200), control1: CGPoint(x: 175, y: 350), control2: CGPoint(x: 250, y: 80))
            //Right vertical bound
            path.addLine(to: CGPoint(x: 450, y: 0))
        }
        .fill(.blue)
        .edgesIgnoringSafeArea(.top)
    }
}

struct DrawingPath_Previews: PreviewProvider {
    static var previews: some View {
        DrawingPath()
    }
}
