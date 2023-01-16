//
//  ApricotFlower.swift
//  Flowers
//
//  Created by user on 1/10/23.
//

import SwiftUI

struct ApricotFlower: View {
    @State var angle: Double = 0
    @State var angle2: Double = 0
    @State var scale: CGFloat = 0
    
    var body: some View {
        ZStack {
            ForEach(0..<6) { item in
                ZStack {
                    RoundedRectangle(cornerRadius: 50)
                        .fill(.yellow.gradient)
                        .frame(width: 150, height: 150, alignment: .center)
                        .offset(y: -90)
                        .animation(.easeInOut(duration: 4).delay(0.5).repeatForever(autoreverses: true), value: scale)
                        .rotationEffect(.degrees(Double(item) * angle))
                        .scaleEffect(CGFloat(scale))
//                      Very Interesting
//                      .blendMode(.exclusion)
                    
                    Circle()
                        .frame(width: 100, height: 100, alignment: .center)
                        .foregroundColor(.yellow)
                        .offset(y: -130)
                        .animation(.easeInOut(duration: 4).delay(0.5).repeatForever(autoreverses: true), value: scale)
                        .rotationEffect(.degrees(Double(item) * angle))
                        .scaleEffect(CGFloat(scale))
                }
                .overlay {
                    Circle()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.yellow)
                        .overlay {
                            ZStack {
                                ForEach(0..<24) { item in
                                    NormalFlowerPath()
                                        .fill(.black.gradient)
                                        .frame(width: 8, height: 8)
                                        .offset(x: 20)
                                        .rotationEffect(.degrees((Double(item) * angle2) + 30))
                                        .scaleEffect(CGFloat(scale))
                                }
                    
                                
                                ForEach(0..<6) { item in
                                    RoundedRectangle(cornerRadius: 1, style: .circular)
                                        .frame(width: 2, height: 130)
                                        .foregroundColor(.orange.opacity(0.4))
                                        .offset(y: -80)
                                        .rotationEffect(.degrees((Double(item) * angle) + 30))
                                        .scaleEffect(CGFloat(scale))
                                    
                                    DrawingPath()
                                        .fill(.red.gradient)
                                        .frame(width: 110, height: 20)
                                        .offset(x: 75)
                                        .rotationEffect(.degrees((Double(item) * angle) + 30))
                                        .scaleEffect(CGFloat(scale))
                                }
                            }
                            
                        }
                }
            }
        }
        .padding()
        .onAppear {
            withAnimation(.easeInOut(duration: 4).delay(0.5)) {
                angle = 60
                angle2 = 15
                scale = 1
            }
        }
    }
}

struct ApricotFlower_Previews: PreviewProvider {
    static var previews: some View {
        ApricotFlower()
    }
}
