//
//  NormalFlowerPath.swift
//  Flowers
//
//  Created by James Thang on 16/01/2023.
//

import SwiftUI

struct NormalFlowerPath: Shape {
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.maxY))
        path.addQuadCurve(
            to: CGPoint(x: rect.midX, y: rect.minY),
            control: CGPoint(x: rect.minX, y: rect.minY))
        path.addQuadCurve(
            to: CGPoint(x: rect.midX, y: rect.maxY),
            control: CGPoint(x: rect.maxX, y: rect.minY))
        
        return path
    }
        
}

struct NormalFlowerPath_Previews: PreviewProvider {
    static var previews: some View {
        NormalFlowerPath()
            .frame(width: 300, height: 240)
    }
}
