//
//  YellowDaisyFlower.swift
//  Flowers
//
//  Created by James Thang on 16/01/2023.
//

import SwiftUI

struct YellowDaisyFlower: View {
    
    @State var angle: Double = 0
    @State var scale: CGFloat = 0
    
    var body: some View {
        ZStack {
            ForEach(0..<36) { item in
                ChrysanthemumPath()
                    .frame(width: 110, height: 20)
                    .foregroundColor(.yellow)
                    .offset(x: 75)
                    .rotationEffect(.degrees((Double(item) * angle) + 30))
                    .scaleEffect(CGFloat(scale))
            }
        }
        .overlay {
            Circle()
                .frame(width: 60, height: 60)
                .foregroundColor(.orange)
        }
        .padding()
        .padding(.bottom, 50)
        .onAppear {
            withAnimation(.easeInOut(duration: 4).delay(0.5)) {
                angle = 10
                scale = 1
            }
        }
    }
}

struct YellowDaisyFlower_Previews: PreviewProvider {
    static var previews: some View {
        YellowDaisyFlower()
    }
}
