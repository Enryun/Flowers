//
//  NormalFlower.swift
//  Flowers
//
//  Created by James Thang on 16/01/2023.
//

import SwiftUI

struct NormalFlower: View {
    
    @State var angle: Double = 0
    @State var scale: CGFloat = 0
    
    let colors: [Color] = [.red, .orange, .blue, .yellow, .purple]
    
    var body: some View {
        ZStack {
            ForEach(0..<5) { item in
                NormalFlowerPath()
                    .fill(colors[item].gradient)
                    .frame(width: 200, height: 160)
                    .offset(y: -60)
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
                angle = 72
                scale = 1
            }
        }
    }
}

struct NormalFlower_Previews: PreviewProvider {
    static var previews: some View {
        NormalFlower()
    }
}
