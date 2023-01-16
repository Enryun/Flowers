//
//  Hexadexagon.swift
//  Flowers
//
//  Created by user on 1/10/23.
//

import SwiftUI

struct Hexadexagon: Shape {
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width: CGFloat = rect.width
        let height: CGFloat = rect.height
        
        path.move(
            to: CGPoint(
                x: 0.2 * width,
                y: 0 * height
            )
        )
        
        path.addLine(
            to: CGPoint(
                x: 0.8 * width,
                y: 0 * height)
        )
        
        path.addLine(
            to: CGPoint(
                x: 1 * width,
                y: 0.5 * height)
        )
        
        path.addLine(
            to: CGPoint(
                x: 0.8 * width,
                y: 1 * height)
        )
        
        path.addLine(
            to: CGPoint(
                x: 0.2 * width,
                y: 1 * height)
        )
        
        path.addLine(
            to: CGPoint(
                x: 0 * width,
                y: 0.5 * height)
        )
        
        path.closeSubpath()
        return path
    }
}

struct Hexadexagon_Previews: PreviewProvider {
    static var previews: some View {
        Hexadexagon()
    }
}
