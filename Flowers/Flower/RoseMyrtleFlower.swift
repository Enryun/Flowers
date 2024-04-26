//
//  RoseMyrtleFlower.swift
//  Flowers
//
//  Created by James Thang on 18/01/2023.
//

import SwiftUI

struct RoseMyrtleFlower: View {
    @State var angle: Double = 0
    @State var angle2: Double = 0
    @State var scale: CGFloat = 0
    var delayTime: Double = 0.5

    var body: some View {
        ZStack {
            ForEach(0..<3) { item in
                LotusFlowerPath()
                    .fill(Gradient(colors: [.pink, .orange]))
                    .frame(width: 140, height: 160)
                    .offset(y: -70)
                    .rotationEffect(.degrees(Double(item) * angle + 60))
                    .scaleEffect(CGFloat(scale))
                
                RoundedRectangle(cornerRadius: 0.5)
                    .fill(Gradient(colors: [.red, .yellow]))
                    .frame(width: 1, height: 110)
                    .offset(y: -85)
                    .rotationEffect(.degrees(Double(item) * angle + 60))
                    .scaleEffect(CGFloat(scale))
            }
            
            ForEach(0..<3) { item in
                LotusFlowerPath()
                    .fill(Gradient(colors: [.red, .pink, .orange]))
                    .frame(width: 140, height: 160)
                    .offset(y: -70)
                    .rotationEffect(.degrees(Double(item) * angle))
                    .scaleEffect(CGFloat(scale))
                
                RoundedRectangle(cornerRadius: 0.5)
                    .fill(Gradient(colors: [.red, .yellow, .orange]))
                    .frame(width: 1, height: 110)
                    .offset(y: -85)
                    .rotationEffect(.degrees(Double(item) * angle))
                    .scaleEffect(CGFloat(scale))
            }
        }
        .overlay {
            Circle()
                .fill(.yellow.gradient)
                .frame(width: 60, height: 60)
                .overlay {
                    ForEach(0..<36) { item in
                        NormalFlowerPath()
                            .fill(.orange.gradient)
                            .frame(width: 8, height: 8)
                            .offset(x: 28)
                            .rotationEffect(.degrees((Double(item) * angle2) + 30))
                            .scaleEffect(CGFloat(scale))
                    }
                }
        }
        .padding()
        .padding(.bottom, 50)
        .onAppear {
            withAnimation(.easeInOut(duration: 4).delay(delayTime)) {
                angle = 120
                angle2 = 10
                scale = 1
            }
        }
    }
}

struct RoseMyrtleFlower_Previews: PreviewProvider {
    static var previews: some View {
        RoseMyrtleFlower()
    }
}
