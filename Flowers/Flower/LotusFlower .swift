//
//  LotusFlower .swift
//  Flowers
//
//  Created by user on 1/10/23.
//

import SwiftUI

struct LotusFlower_: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea(.all)
            
            VStack {
                MainFlower()
            }
        }
    }
}

struct LotusFlower__Previews: PreviewProvider {
    static var previews: some View {
        LotusFlower_()
    }
}

struct MainFlower: View {
    
    @State private var rPetail = false
    @State private var lPetail = false
    @State private var mrPetail = false
    @State private var mlPetail = false
    @State private var customShadow = false
    
    var body: some View {
        Text("Hello World")
    }
}
