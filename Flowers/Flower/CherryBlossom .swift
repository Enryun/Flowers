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
    
    var body: some View {
        ZStack {
            ForEach(0..<5) { item in
                LotusFlowerPath()
                    .fill(.pink.gradient.opacity(0.85))
                    .frame(width: 120, height: 100)
                    .offset(y: -60)
                    .rotationEffect(.degrees(Double(item) * angle))
                    .scaleEffect(CGFloat(scale))
                
                RoundedRectangle(cornerRadius: 0.5)
                    .fill(.red.gradient)
                    .frame(width: 1, height: 90)
                    .offset(y: -60)
                    .rotationEffect(.degrees(Double(item) * angle))
                    .scaleEffect(CGFloat(scale))
            }
        }
        .overlay {
            Circle()
                .fill(.red.gradient)
                .frame(width: 30, height: 30)
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

struct CherryBlossom__Previews: PreviewProvider {
    static var previews: some View {
        CherryBlossom_()
    }
}
