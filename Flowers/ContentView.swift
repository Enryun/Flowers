//
//  ContentView.swift
//  Flowers
//
//  Created by user on 1/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    ApricotFlower(delayTime: 0.5)
                } label: {
                    Text("Apricot Flower")
                        .font(.title)
                }

                NavigationLink {
                    YellowDaisyFlower(delayTime: 0.5)
                } label: {
                    Text("Yellow Daisy Flower")
                        .font(.title)
                }

                NavigationLink {
                    CherryBlossom_(delayTime: 0.5)
                } label: {
                    Text("Cherry Blossom")
                        .font(.title)
                }
                
                NavigationLink {
                    TuberoseFlower(delayTime: 0.5)
                } label: {
                    Text("Tuberose Flower")
                        .font(.title)
                }
                
                NavigationLink {
                    MarigoldFlower(delayTime: 0.5)
                } label: {
                    Text("Marigold")
                        .font(.title)
                }
                
                NavigationLink {
                    GattungCamelliaFlower(delayTime: 0.5)
                } label: {
                    Text("Gattung Camellia")
                        .font(.title)
                }
                
                NavigationLink {
                    Sunflower(delayTime: 0.5)
                } label: {
                    Text("Sunflower")
                        .font(.title)
                }
                
                NavigationLink {
                    FourLeafClover(delayTime: 0.5)
                } label: {
                    Text("FourLeaf Clover")
                        .font(.title)
                }
                
                NavigationLink {
                    RoseMyrtleFlower(delayTime: 0.5)
                } label: {
                    Text("Rose Myrtle")
                        .font(.title)
                }
                
                NavigationLink {
                    IrisDomesticaFlower(delayTime: 0.5)

                } label: {
                    Text("Iris Domestica")
                        .font(.title)
                }
            }
        }
        .preferredColorScheme(.dark)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
