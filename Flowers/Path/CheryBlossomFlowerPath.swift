//
//  LotusFlowerPath.swift
//  Flowers
//
//  Created by James Thang on 16/01/2023.
//

import SwiftUI

struct CheryBlossomFlowerPath: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.maxY))
        path.addQuadCurve(
            to: CGPoint(x: rect.midX, y: rect.minY),
            control: CGPoint(x: rect.minX, y: rect.maxY))
        path.addQuadCurve(
            to: CGPoint(x: rect.midX, y: rect.maxY),
            control: CGPoint(x: rect.maxX, y: rect.maxY))
        
        return path
    }
}

struct CheryBlossomFlowerPath_Previews: PreviewProvider {
    static var previews: some View {
        CheryBlossomFlowerPath()
            .frame(width: 240, height: 300)
    }
}
