//
//  RoseMyrtleFlower.swift
//  Flowers
//
//  Created by James Thang on 18/01/2023.
//

import SwiftUI

struct RoseMyrtleFlower: View {
    @State var angle: Double = 0
    @State var scale: CGFloat = 0
    
    var body: some View {
        ZStack {
            ForEach(0..<3) { item in
                LotusFlowerPath()
                    .fill(.pink.gradient)
                    .frame(width: 140, height: 160)
                    .offset(y: -70)
                    .rotationEffect(.degrees(Double(item) * angle + 60))
                    .scaleEffect(CGFloat(scale))
            }
            
            ForEach(0..<3) { item in
                LotusFlowerPath()
                    .fill(.red.gradient)
                    .frame(width: 140, height: 160)
                    .offset(y: -70)
                    .rotationEffect(.degrees(Double(item) * angle))
                    .scaleEffect(CGFloat(scale))
                    
            }
        }
        .overlay {
            Circle()
                .frame(width: 60, height: 60)
                .foregroundColor(.black)
        }
        .padding()
        .padding(.bottom, 50)
        .onAppear {
            withAnimation(.easeInOut(duration: 4).delay(0.5)) {
                angle = 120
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
