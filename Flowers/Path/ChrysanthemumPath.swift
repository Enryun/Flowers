//
//  chrysanthemumPath.swift
//  Flowers
//
//  Created by James Thang on 16/01/2023.
//

import Foundation

import SwiftUI

struct ChrysanthemumPath: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.minX, y: rect.midY))
        
        path.addArc(center: CGPoint(x: 110, y: rect.midY), radius: 10, startAngle: .degrees(90), endAngle: .degrees(270), clockwise: true)
        
        return path
    }
}

struct ChrysanthemumPath_Previews: PreviewProvider {
    static var previews: some View {
        ChrysanthemumPath()
            .frame(width: 110, height: 20)
            .foregroundColor(.yellow)
    }
}



