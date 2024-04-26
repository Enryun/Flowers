//
//  GPTPath.swift
//  Flowers
//
//  Created by James Thang on 15/02/2023.
//

import SwiftUI

struct GPTPath: Shape {
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.maxX, y: rect.midY))
        
        path.addLine(to: CGPoint(x: rect.midX * 1.5, y: rect.maxY))
        
        path.addLine(to: CGPoint(x: rect.midX * 0.5, y: rect.maxY))
        
        path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
        
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width/2, startAngle: .degrees(180), endAngle: .degrees(360), clockwise: false)
        
        return path
    }
        
}

struct GPTPath2: Shape {
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
                        
        path.move(to: CGPoint(x: rect.midX * 0.8, y: rect.maxY + rect.width/5))
        
        path.addLine(to: CGPoint(x: rect.midX * (1/3), y: rect.maxY - rect.width/5))
        
        path.addLine(to: CGPoint(x: rect.midX * (3.7/5), y: rect.midY * 0.7))
        
        path.addQuadCurve(to: CGPoint(x: rect.maxX, y: rect.midY * 1.2), control: CGPoint(x: rect.midX * 1.7, y: rect.minY))
        
//        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width/3, startAngle: .degrees(180), endAngle: .degrees(360), clockwise: false)
        
        return path
    }
        
}

struct GPTPath_Previews: PreviewProvider {
    static var previews: some View {
        GPTPath2()
            .frame(width: 300, height: 300)
    }
}

