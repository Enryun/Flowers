//
//  FourLeafClover.swift
//  Flowers
//
//  Created by James Thang on 20/01/2023.
//

import SwiftUI

struct FourLeafClover: View {
    
    @State var angle: Double = 0
    @State var scale: CGFloat = 0
    var delayTime: Double = 0.5
    
    var body: some View {
        ZStack {
            ForEach(0..<4) { item in
                HeartShapePath()
                    .fill(.green)
                    .frame(width: 170, height: 160)
                    .offset(y: -80)
                    .rotationEffect(.degrees(Double(item) * angle + 60))
                    .scaleEffect(CGFloat(scale))
                
                RoundedRectangle(cornerRadius: 0.5)
                    .fill(Gradient(colors: [.orange, .yellow, .green]))
                    .frame(width: 1, height: 190)
                    .offset(y: -65)
                    .rotationEffect(.degrees(Double(item) * angle + 60))
                    .scaleEffect(CGFloat(scale))
            }
        }
        .padding()
        .padding(.bottom, 50)
        .onAppear {
            withAnimation(.easeInOut(duration: 4).delay(delayTime)) {
                angle = 90
                scale = 1
            }
        }
    }
    
}

struct FourLeafClover_Previews: PreviewProvider {
    static var previews: some View {
        FourLeafClover()
    }
}
