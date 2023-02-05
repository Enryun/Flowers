//
//  LotusFlower.swift
//  Flowers
//
//  Created by James Thang on 17/01/2023.
//

import SwiftUI

struct LotusFlower: View {
    @State var angle: Double = 0
    @State var angle2: Double = 0
    @State var scale: CGFloat = 0
    
    var body: some View {
        ZStack {
            
            ForEach(0..<4) { item in
                LotusFlowerPath()
                    .fill(Gradient(colors: [.green, .green.opacity(0.6), .white, .white]))
                    .frame(width: 60, height: 120)
                    .offset(y: -80)
                    .rotationEffect(.degrees(Double(item) * angle))
                    .scaleEffect(CGFloat(scale))
            }
                        
            ForEach(0..<4) { item in
                LotusFlowerPath()
                    .fill(Gradient(colors: [.pink, .white]))
                    .frame(width: 80, height: 120)
                    .offset(y: -80)
                    .rotationEffect(.degrees(Double(item) * angle + 45))
                    .scaleEffect(CGFloat(scale))
                
                RoundedRectangle(cornerRadius: 0.5)
                    .fill(Gradient(colors: [.white, .pink]))
                    .frame(width: 1, height: 60)
                    .offset(y: -105)
                    .rotationEffect(.degrees(Double(item) * angle + 45))
                    .scaleEffect(CGFloat(scale))
            }
                        
            ForEach(0..<8) { item in
                CheryBlossomFlowerPath()
                    .fill(Gradient(colors: [.red, .pink, .white]))
                    .frame(width: 100, height: 100)
                    .offset(y: -65)
                    .rotationEffect(.degrees(Double(item) * angle2))
                    .scaleEffect(CGFloat(scale))
                
                RoundedRectangle(cornerRadius: 0.5)
                    .fill(Gradient(colors: [.pink, .white, .yellow]))
                    .frame(width: 1, height: 80)
                    .offset(y: -60)
                    .rotationEffect(.degrees(Double(item) * angle2))
                    .scaleEffect(CGFloat(scale))
            }
        }
        .overlay {
            if #available(iOS 16.0, *) {
                Circle()
                    .fill(.yellow.gradient)
                    .frame(width: 30, height: 30)
            } else {
                // Fallback on earlier versions
                Circle()
                    .fill(.yellow)
                    .frame(width: 30, height: 30)
            }
        }
        .padding()
        .padding(.bottom, 50)
        .onAppear {
            withAnimation(.easeInOut(duration: 4).delay(0.5)) {
                angle = 90
                angle2 = 45
                scale = 1
            }
        }
    }
}

struct LotusFlower_Previews: PreviewProvider {
    static var previews: some View {
        LotusFlower()
    }
}
