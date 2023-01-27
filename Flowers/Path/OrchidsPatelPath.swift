//
//  OrchidsPatel.swift
//  Flowers
//
//  Created by James Thang on 26/01/2023.
//

import SwiftUI

struct OrchidsPatelPath: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        
        path.addQuadCurve(to: CGPoint(x: rect.minX, y: rect.minY), control: CGPoint(x: rect.midX, y: rect.minY - 30))
        
        path.addArc(center: CGPoint(x: rect.midX, y: rect.minY - 60), radius: rect.maxX/2, startAngle: .degrees(180), endAngle: .degrees(360), clockwise: false)
        
        path.addQuadCurve(to: CGPoint(x: rect.midX, y: rect.minY), control: CGPoint(x: rect.midX, y: rect.minY - 30))
        
        return path
    }
}

struct OrchidsPatel_Previews: PreviewProvider {
    static var previews: some View {
        OrchidsPatelPath()
            .frame(width: 300, height: 300)
    }
}
