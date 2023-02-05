//
//  TuberoseFlower.swift
//  Flowers
//
//  Created by James Thang on 18/01/2023.
//

import SwiftUI

struct TuberoseFlower: View {
    @State var angle: Double = 0
    @State var scale: CGFloat = 0
    var delayTime: Double = 0.5
    
    var body: some View {
        ZStack {
            ForEach(0..<6) { item in
                if #available(iOS 16.0, *) {
                    NormalFlowerPath()
                        .fill(Gradient(colors: [.white, .white.opacity(0.8), .white.opacity(0.4)]))
                        .frame(width: 200, height: 160)
                        .offset(y: -90)
                        .scaleEffect(CGFloat(scale))
                        .rotationEffect(.degrees(Double(item) * angle))
                } else {
                    // Fallback on earlier versions
                    NormalFlowerPath()
                        .fill(.white)
                        .frame(width: 200, height: 160)
                        .offset(y: -90)
                        .scaleEffect(CGFloat(scale))
                        .rotationEffect(.degrees(Double(item) * angle))
                }
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
                angle = 60
                scale = 1
            }
        }
    }
}

struct TuberoseFlower_Previews: PreviewProvider {
    static var previews: some View {
        TuberoseFlower()
    }
}
