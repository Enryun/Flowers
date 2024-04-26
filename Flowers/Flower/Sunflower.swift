//
//  Sunflower.swift
//  Flowers
//
//  Created by James Thang on 17/01/2023.
//

import SwiftUI

struct Sunflower: View {
    @State var angle: Double = 0
    @State var angle2: Double = 0
    @State var angle3: Double = 0
    @State var scale: CGFloat = 0
    var delayTime: Double = 0.5
    
    var body: some View {
        ZStack {
            
            ForEach(0..<12) { item in
                ChrysanthemumOppositePath()
                    .fill(Gradient(colors: [.orange, .yellow, .orange]))
                    .frame(width: 160, height: 100)
                    .offset(x: 125)
                    .rotationEffect(.degrees((Double(item) * angle2) + 45))
                    .scaleEffect(CGFloat(scale))
            }
            
            ForEach(0..<12) { item in
                ChrysanthemumOppositePath()
                    .fill(Gradient(colors: [.orange, .yellow, .yellow]))
                    .frame(width: 160, height: 100)
                    .offset(x: 120)
                    .rotationEffect(.degrees((Double(item) * angle2) + 30))
                    .scaleEffect(CGFloat(scale))
            }
            
            ForEach(0..<36) { item in
                ChrysanthemumPath()
                    .fill(Gradient(colors: [.orange, .yellow, .gray]))
                    .frame(width: 150, height: 50)
                    .offset(x: 75)
                    .rotationEffect(.degrees((Double(item) * angle) + 30))
                    .scaleEffect(CGFloat(scale))
            }
            
        }
        .overlay {
            Circle()
                .fill(.black)
                .frame(width: 120, height: 120)
                .overlay {
                    ZStack {
                        ForEach(0..<36) { item in
                            NormalFlowerPath()
                                .fill(.black.gradient)
                                .frame(width: 4, height: 4)
                                .offset(x: 10)
                                .rotationEffect(.degrees((Double(item) * angle) + 30))
                                .scaleEffect(CGFloat(scale))
                            
                            NormalFlowerPath()
                                .fill(.black.gradient)
                                .frame(width: 4, height: 4)
                                .offset(x: 15)
                                .rotationEffect(.degrees((Double(item) * angle) + 30))
                                .scaleEffect(CGFloat(scale))
                            
                            NormalFlowerPath()
                                .fill(.black.gradient)
                                .frame(width: 4, height: 4)
                                .offset(x: 20)
                                .rotationEffect(.degrees((Double(item) * angle) + 30))
                                .scaleEffect(CGFloat(scale))
                            
                            NormalFlowerPath()
                                .fill(.black.gradient)
                                .frame(width: 4, height: 4)
                                .offset(x: 25)
                                .rotationEffect(.degrees((Double(item) * angle) + 30))
                                .scaleEffect(CGFloat(scale))
                            
                            NormalFlowerPath()
                                .fill(.orange.gradient)
                                .frame(width: 8, height: 8)
                                .offset(x: 30)
                                .rotationEffect(.degrees((Double(item) * angle) + 30))
                                .scaleEffect(CGFloat(scale))
                            
                            NormalFlowerPath()
                                .fill(.black.gradient)
                                .frame(width: 6, height: 6)
                                .offset(x: 35)
                                .rotationEffect(.degrees((Double(item) * angle) + 30))
                                .scaleEffect(CGFloat(scale))
                            
                            NormalFlowerPath()
                                .fill(.black.gradient)
                                .frame(width: 6, height: 6)
                                .offset(x: 40)
                                .rotationEffect(.degrees((Double(item) * angle) + 30))
                                .scaleEffect(CGFloat(scale))
                            
                            NormalFlowerPath()
                                .fill(.black.gradient)
                                .frame(width: 6, height: 6)
                                .offset(x: 45)
                                .rotationEffect(.degrees((Double(item) * angle) + 30))
                                .scaleEffect(CGFloat(scale))
                            
                            NormalFlowerPath()
                                .fill(.green.gradient)
                                .frame(width: 8, height: 8)
                                .offset(x: 50)
                                .rotationEffect(.degrees((Double(item) * angle) + 30))
                                .scaleEffect(CGFloat(scale))
                            
                            NormalFlowerPath()
                                .fill(.black.gradient)
                                .frame(width: 8, height: 8)
                                .offset(x: 55)
                                .rotationEffect(.degrees((Double(item) * angle) + 30))
                                .scaleEffect(CGFloat(scale))                            
                        }
                    }
                }
        }
        .padding()
        .padding(.bottom, 50)
        .onAppear {
            withAnimation(.easeInOut(duration: 4).delay(delayTime)) {
                angle = 10
                angle2 = 30
                angle3 = 6
                scale = 1
            }
        }
    }
}

struct Sunflower_Previews: PreviewProvider {
    static var previews: some View {
        Sunflower()
    }
}
