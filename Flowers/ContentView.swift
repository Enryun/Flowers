//
//  ContentView.swift
//  Flowers
//
//  Created by user on 1/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 250) {
                ApricotFlower(delayTime: 0.5)
                YellowDaisyFlower(delayTime: 1)
                CherryBlossom_(delayTime: 1.5)
                TuberoseFlower(delayTime: 2)
                MarigoldFlower(delayTime: 2.5)
                GattungCamelliaFlower(delayTime: 3)
                Sunflower(delayTime: 3.5)
                FourLeafClover(delayTime: 4)
                RoseMyrtleFlower(delayTime: 4.5)
                IrisDomesticaFlower(delayTime: 5)
            }
            .offset(y: 100)
        }
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
