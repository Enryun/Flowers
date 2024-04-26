//
//  OrchidsFlower.swift
//  Flowers
//
//  Created by James Thang on 26/01/2023.
//

import SwiftUI

struct OrchidsFlower: View {
    @State var angle: Double = 0
    @State var angle2: Double = 0
    @State var scale: CGFloat = 0
    
    var body: some View {
        ZStack {
            ForEach(0..<5) { item in
                NormalFlowerPath()
                    .fill(Gradient(colors: [.white, .white.opacity(0.8), .white.opacity(0.4)]))
                    .frame(width: 260, height: 200)
                    .offset(y: -105)
                    .scaleEffect(CGFloat(scale))
                    .rotationEffect(.degrees(Double(item) * angle))
                    .opacity((item == 1 || item == 4) ? 0 : 1)
            }
            
            ForEach(0..<2) { item in
                OrchidsPatelPath()
                    .fill(
                        Gradient(colors:
                                    [.white,
                                     .white.opacity(0.8),
                                     .white.opacity(0.4),
                                     .clear,
                                     .white.opacity(0.4),
                                     .white.opacity(0.8),
                                    ])
                    )
                    .frame(width: 250, height: 250)
                    .offset(y: 135)
                    .rotationEffect(.degrees(Double(item) * angle2 + 90))
                //                    .rotation3DEffect(.degrees(180), axis: (x: 0.0, y: item == 1 ? 0 : 1.0, z: 0.0), anchor: .center)
                    .scaleEffect(CGFloat(scale))
            }
            
        }
        .rotation3DEffect(.degrees(45), axis: (x: 0.0, y: 0.0, z: 0.0), anchor: .center)
        
        .overlay {
            Circle()
                .frame(width: 10, height: 10)
                .foregroundColor(.orange)
        }
        .padding()
        .padding(.bottom, 50)
        .onAppear {
            withAnimation(.easeInOut(duration: 4).delay(0.5)) {
                angle = 72
                angle2 = 180
                scale = 1
            }
        }
        .background(.black)
        .ignoresSafeArea(.all)
    }
}

struct OrchidsFlower_Previews: PreviewProvider {
    static var previews: some View {
        OrchidsFlower()
    }
}
