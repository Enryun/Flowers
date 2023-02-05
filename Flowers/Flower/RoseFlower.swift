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
                if #available(iOS 16.0, *) {
                    NormalFlowerPath()
                        .fill(.red.gradient)
                        .frame(width: 90, height: 50)
                        .offset(x: 40)
                        .rotationEffect(.degrees((Double(item) * angle) + 30))
                        .scaleEffect(CGFloat(scale))
                } else {
                    // Fallback on earlier versions
                    NormalFlowerPath()
                        .fill(.red)
                        .frame(width: 90, height: 50)
                        .offset(x: 40)
                        .rotationEffect(.degrees((Double(item) * angle) + 30))
                        .scaleEffect(CGFloat(scale))
                }
            }
            
        }
        .rotation3DEffect(.degrees(45), axis: (x: 0.0, y: 0.0, z: 0.0), anchor: .center)
        
        .overlay {
            Circle()
                .frame(width: 60, height: 60)
                .foregroundColor(.orange)
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
