//
//  HeartShapePath.swift
//  Flowers
//
//  Created by James Thang on 20/01/2023.
//

import SwiftUI

struct HeartShapePath: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addQuadCurve(
            to: CGPoint(x: rect.midX, y: rect.maxY),
            control: CGPoint(x: rect.minX - 0.6 * (rect.maxX), y: rect.minY - (0.4 * rect.maxY)))
        path.addQuadCurve(
            to: CGPoint(x: rect.midX, y: rect.minY),
            control: CGPoint(x: rect.maxX * 1.6, y: rect.minY - (0.4 * rect.maxY)))
        
        return path
    }
}

struct HeartShapePath_Previews: PreviewProvider {
    static var previews: some View {
        HeartShapePath()
            .frame(width: 300, height: 300)
    }
}
