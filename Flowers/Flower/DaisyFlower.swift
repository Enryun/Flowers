//
//  DaisyFlower.swift
//  Flowers
//
//  Created by James Thang on 16/01/2023.
//

import SwiftUI

struct DaisyFlower: View {
    @State var angle: Double = 0
    @State var scale: CGFloat = 0
    var delayTime: Double = 0.5

    var body: some View {
        ZStack {
            ForEach(0..<10) { item in
                NormalFlowerPath()
                    .fill(Gradient(colors: [.white, .white.opacity(0.8), .white.opacity(0.4)]))
                    .frame(width: 200, height: 160)
                    .offset(y: -90)
                    .scaleEffect(CGFloat(scale))
                    .rotation3DEffect(.degrees(45), axis: (x: 0.0, y: 0.13, z: 0.0), anchor: .center)
                    .rotationEffect(.degrees(Double(item) * angle))
                
            }
        }
        .overlay {
            if #available(iOS 16.0, *) {
                Circle()
                    .fill(.yellow.gradient)
                    .frame(width: 60, height: 60)
            } else {
                // Fallback on earlier versions
                Circle()
                    .fill(.yellow)
                    .frame(width: 60, height: 60)
            }
        }
        .padding()
        .padding(.bottom, 50)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            Color.black.ignoresSafeArea(.all)
        }
        .onAppear {
            withAnimation(.easeInOut(duration: 4).delay(delayTime)) {
                angle = 36
                scale = 1
            }
        }
    }
}



struct DaisyFlower_Previews: PreviewProvider {
    static var previews: some View {
        DaisyFlower()
    }
}
