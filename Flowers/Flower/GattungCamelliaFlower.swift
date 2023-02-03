//
//  GattungCamelliaFlower.swift
//  Flowers
//
//  Created by James Thang on 16/01/2023.
//

import SwiftUI


struct GattungCamelliaFlower: View {
    
    @State var angle: Double = 0
    @State var scale: CGFloat = 0
    var delayTime: Double = 0.5
    
    var body: some View {
        ZStack {
            ForEach(0..<5) { item in
                
                CheryBlossomFlowerPath()
                    .fill(.pink.gradient.opacity(0.8))
                    .frame(width: 100, height: 100)
                    .offset(y: -60)
                    .rotationEffect(.degrees(Double(item) * angle + 36))
                    .scaleEffect(CGFloat(scale))

                CheryBlossomFlowerPath()
                    .fill(.pink.gradient.opacity(0.5))
                    .frame(width: 120, height: 100)
                    .offset(y: -60)
                    .rotationEffect(.degrees(Double(item) * angle))
                    .scaleEffect(CGFloat(scale))
            }
        }
        .overlay {
            Circle()
                .fill(.yellow.gradient)
                .frame(width: 30, height: 30)
        }
        .padding()
        .padding(.bottom, 50)
        .onAppear {
            withAnimation(.easeInOut(duration: 4).delay(delayTime)) {
                angle = 72
                scale = 1
            }
        }
    }
}

struct GattungCamelliaFlower_Previews: PreviewProvider {
    static var previews: some View {
        GattungCamelliaFlower()
    }
}
