//
//  IrisDomesticaFlower.swift
//  Flowers
//
//  Created by James Thang on 22/01/2023.
//

import SwiftUI

struct IrisDomesticaFlower: View {
    @State var angle: Double = 0
    @State var scale: CGFloat = 0
    
    var body: some View {
        ZStack {
            ForEach(0..<36) { item in
                IrisDomesticaPath()
                    .fill(.yellow.gradient)
                    .opacity(item < 20 ? 0 : 1)
                    .frame(width: 160, height: 30)
                    .offset(x: 75)
                    .rotationEffect(.degrees((Double(item) * angle) + 30))
                    .scaleEffect(CGFloat(scale))
            }
        }
        .padding()
        .padding(.bottom, 50)
        .onAppear {
            withAnimation(.easeInOut(duration: 4).delay(0.5)) {
                angle = 10
                scale = 1
            }
        }
    }
    
}

struct SunShape: View {
    @State var angle: Double = 0
    @State var scale: CGFloat = 0
    
    var body: some View {
        ZStack {
            ForEach(0..<24) { item in
                IrisDomesticaPath()
                    .fill(.yellow)
                    .frame(width: 170, height: 20)
                    .offset(y: -120)
                    .rotationEffect(.degrees(Double(item) * angle + 90))
                    .scaleEffect(CGFloat(scale))
            }
        }
        .padding()
        .padding(.bottom, 50)
        .onAppear {
            withAnimation(.easeInOut(duration: 4).delay(0.5)) {
                angle = 15
                scale = 1
            }
        }
    }
}

struct IrisDomesticaFlower_Previews: PreviewProvider {
    static var previews: some View {
        IrisDomesticaFlower()
    }
}
