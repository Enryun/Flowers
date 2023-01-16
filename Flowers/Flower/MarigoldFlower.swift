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
    
    var body: some View {
        ZStack {
            ForEach(0..<30) { item in
                NormalFlowerPath()
                    .fill(.yellow.gradient)
                    .frame(width: 50, height: 10)
                    .offset(x: 35)
                    .rotationEffect(.degrees((Double(item) * angle) + 30))
                    .scaleEffect(CGFloat(scale))
                
                NormalFlowerPath()
                    .fill(.orange.gradient)
                    .frame(width: 70, height: 15)
                    .offset(x: 55)
                    .rotationEffect(.degrees((Double(item) * angle) + 30))
                    .scaleEffect(CGFloat(scale))
                
                NormalFlowerPath()
                    .fill(.orange.gradient)
                    .frame(width: 110, height: 20)
                    .offset(x: 85)
                    .rotationEffect(.degrees((Double(item) * angle) + 30))
                    .scaleEffect(CGFloat(scale))
                
                NormalFlowerPath()
                    .fill(.orange.gradient)
                    .frame(width: 110, height: 20)
                    .offset(x: 120)
                    .rotationEffect(.degrees((Double(item) * angle) + 25))
                    .scaleEffect(CGFloat(scale))
            }
        }
        .overlay {
            Circle()
                .frame(width: 60, height: 60)
                .foregroundColor(.orange)
        }
        .padding()
        .padding(.bottom, 50)
        .onAppear {
            withAnimation(.easeInOut(duration: 4).delay(0.5)) {
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
