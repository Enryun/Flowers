//
//  RoseFlower.swift
//  Flowers
//
//  Created by James Thang on 16/01/2023.
//

import SwiftUI

struct RoseFlower: View {
    @State var angle: Double = 0
    @State var scale: CGFloat = 0
    
    var body: some View {
        ZStack {
            ForEach(0..<5) { item in
                
                NormalFlowerPath()
                    .fill(Gradient(colors: [.white, .white.opacity(0.8), .white.opacity(0.4)]))
                    .frame(width: 300, height: 200)
                    .offset(y: -90)
                    .rotation3DEffect(.degrees(Double(item) * angle), axis: (x: 0.0, y: 0.2, z: 0.0), anchor: .center)
                    .scaleEffect(CGFloat(scale))
                    .rotationEffect(.degrees(Double(item) * angle))
//                NormalFlowerPath()
//                    .fill(.orange.gradient)
//                    .frame(width: 70, height: 15)
//                    .offset(x: 60)
//                    .rotationEffect(.degrees((Double(item) * angle) + 30))
//                    .scaleEffect(CGFloat(scale))
//
//                NormalFlowerPath()
//                    .fill(.orange.gradient)
//                    .frame(width: 110, height: 20)
//                    .offset(x: 95)
//                    .rotationEffect(.degrees((Double(item) * angle) + 30))
//                    .scaleEffect(CGFloat(scale))
//
//                NormalFlowerPath()
//                    .fill(.orange.gradient)
//                    .frame(width: 110, height: 20)
//                    .offset(x: 130)
//                    .rotationEffect(.degrees((Double(item) * angle) + 25))
//                    .scaleEffect(CGFloat(scale))
            }
            
        }
        .rotation3DEffect(.degrees(45), axis: (x: 0.0, y: 0.0, z: 0.0), anchor: .center)
        
        .overlay {
//            Circle()
//                .frame(width: 60, height: 60)
//                .foregroundColor(.orange)
        }
        .padding()
        .padding(.bottom, 50)
        .onAppear {
            withAnimation(.easeInOut(duration: 4).delay(0.5)) {
                angle = 72
                scale = 1
            }
        }
        .background(.black)
        .ignoresSafeArea(.all)
    }
}

struct RoseFlower_Previews: PreviewProvider {
    static var previews: some View {
        RoseFlower()
    }
}
