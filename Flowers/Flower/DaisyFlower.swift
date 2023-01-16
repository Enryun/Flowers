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
    
    var body: some View {
        ZStack {
            ForEach(0..<10) { item in
                NormalFlowerPath()
                    .fill(Gradient(colors: [.white, .white.opacity(0.8), .white.opacity(0.4)]))
                    .frame(width: 200, height: 160)
                    .offset(y: -90)
                    .rotation3DEffect(.degrees(45), axis: (x: 0.0, y: 0.13, z: 0.0), anchor: .center)
                    .scaleEffect(CGFloat(scale))
                    .rotationEffect(.degrees(Double(item) * angle))
            }
        }
        .overlay {
            Circle()
                .fill(.yellow.gradient)
                .frame(width: 60, height: 60)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
        .ignoresSafeArea(.all)
        .padding()
        .padding(.bottom, 50)
        .onAppear {
            withAnimation(.easeInOut(duration: 4).delay(0.5)) {
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
