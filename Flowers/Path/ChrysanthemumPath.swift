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

//struct CurveShape: View {
//    var body: some View {
//        Path { path in
//            //Top left
//            path.move(to: CGPoint(x: 0, y: 0))
//            //Left vertical bound
//            path.addLine(to: CGPoint(x: 0, y: 300))
//            //Curve
//            path.addCurve(to: CGPoint(x: 430, y: 200), control1: CGPoint(x: 175, y: 350), control2: CGPoint(x: 250, y: 80))
//            //Right vertical bound
//            path.addLine(to: CGPoint(x: 450, y: 0))
//        }
//        .fill(.blue)
//        .edgesIgnoringSafeArea(.top)
//    }
//}

struct ChrysanthemumPath_Previews: PreviewProvider {
    static var previews: some View {
        ChrysanthemumPath()
            .frame(width: 110, height: 20)
            .foregroundColor(.yellow)
    }
}



