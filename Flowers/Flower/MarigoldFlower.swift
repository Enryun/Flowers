//
//  MarigoldFlower.swift
//  Flowers
//
//  Created by James Thang on 16/01/2023.
//

import SwiftUI

struct MarigoldFlower: View {
    @State var angle: Double = 0
    @State var scale: CGFloat = 0
    var delayTime: Double = 0.5
    
    var body: some View {
        ZStack {
            ForEach(0..<30) { item in
                if #available(iOS 16.0, *) {
                    NormalFlowerPath()
                        .fill(.orange.gradient)
                        .frame(width: 50, height: 10)
                        .offset(x: 35)
                        .rotationEffect(.degrees((Double(item) * angle) + 30))
                        .scaleEffect(CGFloat(scale))
                    
                    NormalFlowerPath()
                        .fill(.yellow.gradient)
                        .frame(width: 70, height: 15)
                        .offset(x: 55)
                        .rotationEffect(.degrees((Double(item) * angle) + 30))
                        .scaleEffect(CGFloat(scale))
                    
                    NormalFlowerPath()
                        .fill(.yellow.gradient)
                        .frame(width: 110, height: 20)
                        .offset(x: 85)
                        .rotationEffect(.degrees((Double(item) * angle) + 30))
                        .scaleEffect(CGFloat(scale))
                    
                    NormalFlowerPath()
                        .fill(.yellow.gradient)
                        .frame(width: 110, height: 20)
                        .offset(x: 120)
                        .rotationEffect(.degrees((Double(item) * angle) + 25))
                        .scaleEffect(CGFloat(scale))
                } else {
                    // Fallback on earlier versions
                    NormalFlowerPath()
                        .fill(.orange)
                        .frame(width: 50, height: 10)
                        .offset(x: 35)
                        .rotationEffect(.degrees((Double(item) * angle) + 30))
                        .scaleEffect(CGFloat(scale))
                    
                    NormalFlowerPath()
                        .fill(.yellow)
                        .frame(width: 70, height: 15)
                        .offset(x: 55)
                        .rotationEffect(.degrees((Double(item) * angle) + 30))
                        .scaleEffect(CGFloat(scale))
                    
                    NormalFlowerPath()
                        .fill(.yellow)
                        .frame(width: 110, height: 20)
                        .offset(x: 85)
                        .rotationEffect(.degrees((Double(item) * angle) + 30))
                        .scaleEffect(CGFloat(scale))
                    
                    NormalFlowerPath()
                        .fill(.yellow)
                        .frame(width: 110, height: 20)
                        .offset(x: 120)
                        .rotationEffect(.degrees((Double(item) * angle) + 25))
                        .scaleEffect(CGFloat(scale))
                }
                
                
            }
        }
        .overlay {
            if #available(iOS 16.0, *) {
                Circle()
                    .fill(.yellow.opacity(0.5).gradient)
                    .frame(width: 60, height: 60)
            } else {
                // Fallback on earlier versions
                Circle()
                    .fill(.yellow.opacity(0.5))
                    .frame(width: 60, height: 60)
            }
        }
        .padding()
        .padding(.bottom, 50)
        .onAppear {
            withAnimation(.easeInOut(duration: 4).delay(delayTime)) {
                angle = 12
                scale = 1
            }
        }
    }
}

struct MarigoldFlower_Previews: PreviewProvider {
    static var previews: some View {
        MarigoldFlower()
    }
}
