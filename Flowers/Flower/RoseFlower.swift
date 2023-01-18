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
                
                let backColor = Gradient(colors: [.purple, .white])
                let groudColor = Gradient(colors: [.purple, .white])
                
                LotusFlowerPath()
                    .fill((item == 1 || item == 4) ? groudColor : backColor)
                    .frame(width: 340, height: 160)
                    .offset(y: -120)
                    .rotation3DEffect(
                        .degrees((item == 1 || item == 4) ? 0 : Double(item) * angle),
                        axis: (x: 0.0, y: 0.2, z: 0.0),
                        anchor: .center)
                    .scaleEffect(CGFloat(scale))
                    .rotationEffect(.degrees(Double(item) * angle))
                    .zIndex((item == 1 || item == 4) ? 1 : 0)
                
                RoundedRectangle(cornerRadius: 0.5)
                    .fill(.white)
                    .frame(width: 10, height: 25)
                    .offset(y: -30)
                    .rotationEffect(.degrees(Double(item) * angle))
                    .scaleEffect(CGFloat(scale))
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
