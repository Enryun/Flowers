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
                ApricotFlower()
                YellowDaisyFlower()
                CherryBlossom_()
                TuberoseFlower()
                MarigoldFlower()
                GattungCamelliaFlower()
                Sunflower()
                FourLeafClover()
                RoseMyrtleFlower()
                IrisDomesticaFlower()
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
