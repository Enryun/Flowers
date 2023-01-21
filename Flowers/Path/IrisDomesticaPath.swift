//
//  IrisDomesticaPath.swift
//  Flowers
//
//  Created by James Thang on 22/01/2023.
//

import SwiftUI

struct IrisDomesticaPath: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.minX, y: rect.midY))
        
        path.addArc(center: CGPoint(x: rect.maxX, y: rect.midY), radius: 15, startAngle: .degrees(270), endAngle: .degrees(90), clockwise: true)
        
        return path
    }
}

struct IrisDomesticaPath_Previews: PreviewProvider {
    static var previews: some View {
        IrisDomesticaPath()
    }
}
