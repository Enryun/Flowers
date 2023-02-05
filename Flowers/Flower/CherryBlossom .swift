//
//  CherryBlossom .swift
//  Flowers
//
//  Created by user on 1/10/23.
//

import SwiftUI

struct CherryBlossom_: View {
    @State var angle: Double = 0
    @State var scale: CGFloat = 0
    var delayTime: Double = 0.5
    
    var body: some View {
        ZStack {
            ForEach(0..<5) { item in
                if #available(iOS 16.0, *) {
                    CheryBlossomFlowerPath()
                        .fill(.pink.gradient.opacity(0.85))
                        .frame(width: 240, height: 200)
                        .offset(y: -95)
                        .rotationEffect(.degrees(Double(item) * angle))
                        .scaleEffect(CGFloat(scale))
                    
                    RoundedRectangle(cornerRadius: 0.5)
                        .fill(.red.gradient)
                        .frame(width: 1, height: 180)
                        .offset(y: -95)
                        .rotationEffect(.degrees(Double(item) * angle))
                        .scaleEffect(CGFloat(scale))
                } else {
                    // Fallback on earlier versions
                    CheryBlossomFlowerPath()
                        .fill(.pink.opacity(0.85))
                        .frame(width: 240, height: 200)
                        .offset(y: -95)
                        .rotationEffect(.degrees(Double(item) * angle))
                        .scaleEffect(CGFloat(scale))
                    
                    RoundedRectangle(cornerRadius: 0.5)
                        .fill(.red)
                        .frame(width: 1, height: 180)
                        .offset(y: -95)
                        .rotationEffect(.degrees(Double(item) * angle))
                        .scaleEffect(CGFloat(scale))
                }
                
                
            }
        }
        .overlay {
            if #available(iOS 16.0, *) {
                Circle()
                    .fill(.red.gradient)
                    .frame(width: 30, height: 30)
            } else {
                // Fallback on earlier versions
                Circle()
                    .fill(.red)
                    .frame(width: 30, height: 30)
            }
        }
        .padding()
        .padding(.bottom, 50)
        .onAppear {
            withAnimation(.easeInOut(duration: 4).delay(delayTime)) {
                angle = 72
                scale = 1
            }
        }
    }
}

struct CherryBlossom__Previews: PreviewProvider {
    static var previews: some View {
        CherryBlossom_()
    }
}
