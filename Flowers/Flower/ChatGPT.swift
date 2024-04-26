//
//  ChatGPT.swift
//  Flowers
//
//  Created by James Thang on 15/02/2023.
//

import SwiftUI

struct ChapGptDemo: View {
    var body: some View {
        ZStack {
            Color("ChatGPT").ignoresSafeArea()
            ChatGPT()
        }
    }
}

struct ChatGPT: View {
    @State var angle: Double = 0
    @State var scale: CGFloat = 0
    var delayTime: Double = 0.5
    
    
    var body: some View {
        ZStack {
            ForEach(0..<6) { item in
                ZStack {
                    GPTPath2()
                        .stroke(lineWidth: 10)
                        .fill(.white)
                        .frame(width: 220, height: 200)
                        .offset(y: -110)
                        .rotationEffect(.degrees(Double(item) * angle))
                        .scaleEffect(CGFloat(scale))
                }
            }
        }
        .padding()
        .padding(.bottom, 50)
        .onAppear {
            withAnimation(.easeInOut(duration: 4).delay(delayTime)) {
                angle = 60
                scale = 1
            }
        }
        .rotationEffect(.degrees(30))
        .preferredColorScheme(.dark)
    }
}

struct ChatGPT_Previews: PreviewProvider {
    static var previews: some View {
        ChapGptDemo()
    }
}
